class MonitorController < ApplicationController
  def index
		@schedules = Schedule.date_schedule_equal(Date.today)
  end
end
