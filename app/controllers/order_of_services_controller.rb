class OrderOfServicesController < ApplicationController
  before_action :set_order_of_service, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @order_of_services = OrderOfService.all
    respond_with(@order_of_services)
  end

  def show
    respond_with(@order_of_service)
  end

  def new
    @order_of_service = OrderOfService.new
    respond_with(@order_of_service)
  end

  def edit
    @order_of_service.client_name = @order_of_service.client.name
    @order_of_service.technical_consultant_name = @order_of_service.technical_consultant.name
  end

  def create
    @order_of_service = OrderOfService.new(order_of_service_params)
    @order_of_service.save
    respond_with(@order_of_service)
  end

  def update
    @order_of_service.update(order_of_service_params)
    respond_with(@order_of_service)
  end

  def destroy
    @order_of_service.destroy
    respond_with(@order_of_service)
  end

  private
    def set_order_of_service
      @order_of_service = OrderOfService.find(params[:id])
    end

    def order_of_service_params
      params.require(:order_of_service).permit(:number, :client_id, :client_name, :technical_consultant_name, :technical_consultant_id)
    end
end
