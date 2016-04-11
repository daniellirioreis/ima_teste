class CreateOrderOfServices < ActiveRecord::Migration
  def change
    create_table :order_of_services do |t|
      t.integer :number
      t.references :client, index: true

      t.timestamps
    end
  end
end
