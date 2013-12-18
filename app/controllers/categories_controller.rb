class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def edit
    @category = Category.find(params[:id])
  end

  def create
    @category = Category.new(category_params)

    @category.save

    respond_with @category, :location => categories_path
  end

  def update
    @category = Category.find(params[:id])

    @category.update(category_params)

    respond_with @category, :location => categories_path
  end

  private
    def category
      @category = Category.find(params[:id])
    end

    def category_params
      params.require(:category).permit(:name)
    end

end