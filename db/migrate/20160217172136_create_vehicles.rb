class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :type_vehicle, limit: 100
      t.text :description
      t.string :license_plate, limit: 7

      t.timestamps
    end
  end
end
