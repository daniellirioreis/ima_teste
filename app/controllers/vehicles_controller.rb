class VehiclesController < ApplicationController
  before_action :set_vehicle, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @vehicles = Vehicle.all
    respond_with(@vehicles)
  end

  def show
    respond_with(@vehicle)
  end

  def new
    @vehicle = Vehicle.new
    respond_with(@vehicle)
  end

  def edit
  end

  def create
    @vehicle = Vehicle.new(vehicle_params)
    @vehicle.save
	respond_with @vehicle, :location => vehicles_path

  end

  def update
    @vehicle.update(vehicle_params)
	respond_with @vehicle, :location => vehicles_path
  end

  def destroy
    @vehicle.destroy
    respond_with(@vehicle)
  end

  private
    def set_vehicle
      @vehicle = Vehicle.find(params[:id])
    end

    def vehicle_params
      params.require(:vehicle).permit(:type_vehicle, :description, :license_plate, :owner, :client_id)
    end
end
