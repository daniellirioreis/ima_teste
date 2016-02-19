class Schedule < ActiveRecord::Base
  belongs_to :vehicle
  belongs_to :technical_consultant

	scope :date_schedule_equal, lambda { |date| where("schedules.date_schedule = ?", date)}
	scope :sorted, -> { order("schedules.hour_schedule") }
	end
