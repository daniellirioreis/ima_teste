class AddClientIdToVehicles < ActiveRecord::Migration
  def change
		add_column :vehicles, :client_id, :integer, index: true
  end
end
