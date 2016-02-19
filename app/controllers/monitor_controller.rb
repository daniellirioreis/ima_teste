class MonitorController < ApplicationController
  def index
		@schedules = Schedule.sorted.date_schedule_equal(Date.today)
  end
end
