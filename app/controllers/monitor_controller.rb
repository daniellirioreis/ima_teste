class MonitorController < ApplicationController
  def index
		@schedules = Schedule.all
  end
end
