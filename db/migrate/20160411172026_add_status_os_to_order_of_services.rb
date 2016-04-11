class AddStatusOsToOrderOfServices < ActiveRecord::Migration
  def change
    add_column :order_of_services, :status_os, :integer
  end
end
