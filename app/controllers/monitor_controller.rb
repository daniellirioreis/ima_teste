class MonitorController < ApplicationController
  def index
		@order_of_services = OrderOfService.all
  end
end
