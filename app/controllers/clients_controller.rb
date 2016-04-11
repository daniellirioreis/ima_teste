class ClientsController < ApplicationController
  before_action :set_client, only: [:show, :edit, :update, :destroy]
  respond_to :html
  autocomplete :client, :name, :display_value => :name, :extra_data => [ :email] do |items|
  respond_to do |format|
  format.json { render :json => @items }
      end
    end


  def index
    @clients = Client.all
    respond_with(@clients)
  end

  def show
			
		@vehicles = @client.vehicles
  
    respond_with(@client)
	end

  def new
    @client = Client.new
    respond_with(@client)
  end

  def edit
  end

  def create
    @client = Client.new(client_params)
    @client.save
    respond_with(@client)
  end

  def update
    @client.update(client_params)
    respond_with(@client)
  end

  def destroy
    @client.destroy
    respond_with(@client)
  end

  private
    def set_client
      @client = Client.find(params[:id])
    end

    def client_params
      params.require(:client).permit(:name, :email, :phone, :cel_phone)
    end
end
