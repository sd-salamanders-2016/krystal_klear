class WorkOrder < ActiveRecord::Base
  belongs_to :job
  belongs_to :route
  has_many :employee_work_orders
  has_many :employees, through: :employee_work_orders, source: :user

  scope :incomplete, -> { where(complete: "incomplete") }
  scope :complete, -> { where(complete: "complete") }
  scope :pass, -> { where(complete: "pass") }
  scope :current_week, -> { where(week: Time.now.strftime('%W').to_i)}

  def weekday
    self.washing_datetime.strftime('%A')
  end

  def incomplete?
    self.complete == "incomplete"
  end

  def complete?
    self.complete == "complete"
  end

  def passed?
    self.complete == "pass"
  end

end
