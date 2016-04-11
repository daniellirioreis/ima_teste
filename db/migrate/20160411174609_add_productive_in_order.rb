class AddProductiveInOrder < ActiveRecord::Migration
  def change
    add_column :order_of_services, :productive_id, :integer
  end
end
