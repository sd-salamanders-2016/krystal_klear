class Job < ActiveRecord::Base
  belongs_to :client
  belongs_to :route
  validates :name, :description, :frequency, :estimated_price, {presence: true}
  has_many :work_orders

  def has_route?
    !self.route_id.nil?
  end

  def self.generate_work_order(weeksFromNow = 0);
    # find current week
    current_week = Time.now.strftime('%W').to_i + weeksFromNow
    jobs = Job.all
    jobs.each do |j|
      # find weeks since job was created
      seconds = Time.now - j.created_at
      weeks = (seconds/60480).floor + weeksFromNow
      # continue based on some job frequency
      if weeks % j.frequency.to_i == 0
        # find work order
        work_order = WorkOrder.find_by(job_id: j.id)
        # continue if no work_order exists for the week
        if work_order == nil || work_order.week != current_week
          # create new work_order for job
          worder = WorkOrder.new(job_id: j.id, route_id: j.route_id)
          worder.week = current_week
          worder.save
        end
      end
    end
  end

  def self.generate_work_order
    self.generate_work_order 1
  end
end
