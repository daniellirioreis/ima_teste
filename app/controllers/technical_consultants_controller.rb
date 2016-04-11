class TechnicalConsultantsController < ApplicationController
  before_action :set_technical_consultant, only: [:show, :edit, :update, :destroy]

  respond_to :html

  autocomplete :technical_consultant, :name, :display_value => :name, :extra_data => [] do |items|
    respond_to do |format|
      format.json { render :json => @items }
    end
  end

  def index
    @technical_consultants = TechnicalConsultant.sorted
    respond_with(@technical_consultants)
  end

  def show
    respond_with(@technical_consultant)
  end

  def new
    @technical_consultant = TechnicalConsultant.new
    respond_with(@technical_consultant)
  end

  def edit
  end

  def create
    @technical_consultant = TechnicalConsultant.new(technical_consultant_params)
    @technical_consultant.save
    respond_with @technical_consultant, :location => technical_consultants_path


  end

  def update
    @technical_consultant.update(technical_consultant_params)
    respond_with(@technical_consultant)
  end

  def destroy
    @technical_consultant.destroy
    respond_with(@technical_consultant)
  end

  private
    def set_technical_consultant
      @technical_consultant = TechnicalConsultant.find(params[:id])
    end

    def technical_consultant_params
      params.require(:technical_consultant).permit(:name, :cod)
    end
end
