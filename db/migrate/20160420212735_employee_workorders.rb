class EmployeeWorkorders < ActiveRecord::Migration
  def change
    create_table :employee_work_orders do |t|
      t.integer :user_id, null: false
      t.integer :work_order_id, null: false

      t.timestamps null: false
    end
  end
end


