class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.references :vehicle, index: true
      t.references :technical_consultant, index: true
      t.date :date_schedule
      t.time :hour_schedule
      t.text :description_service

      t.timestamps
    end
    add_foreign_key :schedules, :vehicles
    add_foreign_key :schedules, :technical_consultants
  end
end
