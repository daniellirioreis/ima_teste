class CreateProductives < ActiveRecord::Migration
  def change
    create_table :productives do |t|
      t.integer :code
      t.string :name
      t.string :function

      t.timestamps
    end
  end
end
