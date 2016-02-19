class CreateTechnicalConsultants < ActiveRecord::Migration
  def change
    create_table :technical_consultants do |t|
      t.string :name
      t.integer :cod, limit: 3

      t.timestamps
    end
  end
end
