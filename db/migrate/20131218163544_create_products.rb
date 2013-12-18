class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.boolean :status, default: true
      t.references :category, index: true

      t.timestamps
    end
    add_foreign_key :products, :categories
  end
end
