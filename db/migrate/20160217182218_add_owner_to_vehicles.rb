class AddOwnerToVehicles < ActiveRecord::Migration
  def change
		add_column :vehicles, :owner, :string
  end
end
