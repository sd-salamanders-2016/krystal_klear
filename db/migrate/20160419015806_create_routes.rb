class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.string :name
      t.text :description
      t.string :day
      t.integer :employee_id

      t.timestamps null: false
    end
  end
end
