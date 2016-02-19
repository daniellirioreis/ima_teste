class Schedule < ActiveRecord::Base
  belongs_to :vehicle
  belongs_to :technical_consultant
	validates :vehicle_id, :technical_consultant_id, presence: true
	scope :date_schedule_equal, lambda { |date| where("schedules.date_schedule = ?", date)}
	scope :sorted, -> { order("schedules.hour_schedule") }
	end
