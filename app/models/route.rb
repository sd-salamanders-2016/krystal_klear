class Route < ActiveRecord::Base
  has_many :jobs
  has_many :work_orders
  has_many :current_week_work_orders, -> {where(week: Time.now.strftime('%W').to_i)}, class_name: 'WorkOrder'
  belongs_to :employee, class_name: "User"

  validates :name, presence: true
  validates :name, uniqueness: true

  def sum_jobs
    jobs.sum(:estimated_price)
  end

  def sum_rainy
    total = 0
    self.jobs.each do |job|
      total += job.estimated_price if job.rainy_day
    end
    return total
  end

  def rain_percent
    sum_rainy / sum_jobs.to_f
  end
end
