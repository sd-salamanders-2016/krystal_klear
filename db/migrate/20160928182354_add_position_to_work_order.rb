class AddPositionToWorkOrder < ActiveRecord::Migration
  def change
    add_column :work_orders, :position, :integer
  end
end
