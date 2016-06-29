class Route < ActiveRecord::Base
  has_many :jobs
  # has_many :employee_routes
  # has_many :job_employees, through: :employee_routes, source: :user
  has_many :work_orders
  has_many :current_week_work_orders, -> {where(week: Time.now.strftime('%W').to_i)}, class_name: 'WorkOrder'
  belongs_to :employee, class_name: "User"

  validates :name, presence: true
  validates :name, uniqueness: true

  def sum_jobs
    total = 0
    self.jobs.each do |job|
      total += job.estimated_price
    end
    return total
  end
  def sum_rainy
    total = 0
    self.jobs.each do |job|
      total += job.estimated_price if job.rainy_day
    end
    return total
  end
end
