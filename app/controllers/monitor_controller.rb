class MonitorController < ApplicationController
  def index
    if params[:status] != ""
      @order_of_services = OrderOfService.by_status_os(params[:status].to_i)  		
    else
    	@order_of_services = OrderOfService.all
    end   
  end
end
