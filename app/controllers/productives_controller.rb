class ProductivesController < ApplicationController
  before_action :set_productive, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @productives = Productive.all
    respond_with(@productives)
  end

  def show
    respond_with(@productive)
  end

  def new
    @productive = Productive.new
    respond_with(@productive)
  end

  def edit
  end

  def create
    @productive = Productive.new(productive_params)
    @productive.save
    respond_with(@productive)
  end

  def update
    @productive.update(productive_params)
    respond_with(@productive)
  end

  def destroy
    @productive.destroy
    respond_with(@productive)
  end

  private
    def set_productive
      @productive = Productive.find(params[:id])
    end

    def productive_params
      params.require(:productive).permit(:code, :name, :function)
    end
end
