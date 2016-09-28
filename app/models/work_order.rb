class WorkOrder < ActiveRecord::Base
  belongs_to :job
  belongs_to :route
  has_one :primary_employee, through: :route, source: :employee
  has_many :employee_work_orders
  has_many :employees, through: :employee_work_orders, source: :user
  acts_as_list :job


  scope :incomplete, -> { where(complete: "incomplete") }
  scope :complete, -> { where(complete: "complete") }
  scope :pass, -> { where(complete: "pass") }
  scope :current_week, -> { where(week: Time.now.strftime('%W').to_i)}

  scope :monday, ->{ joins(:route).where(routes: { day: "monday" }) }
  scope :tuesday, ->{ joins(:route).where(routes: { day: "tuesday" }) }
  scope :wednesday, ->{ joins(:route).where(routes: { day: "wednesday" }) }
  scope :thursday, ->{ joins(:route).where(routes: { day: "thursday" }) }
  scope :friday, ->{ joins(:route).where(routes: { day: "friday" }) }
  scope :saturday, ->{ joins(:route).where(routes: { day: "saturday" }) }
  scope :sunday, ->{ joins(:route).where(routes: { day: "sunday" }) }


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
