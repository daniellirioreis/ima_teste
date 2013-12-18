class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def edit
    @product = Product.find(params[:id])
  end


  def create
    @product = Product.new(product_params)

    @product.save

    respond_with @product, :location => products_path
  end

  def update
    @product = Product.find(params[:id])

    @product.update(product_params)

    respond_with @product, :location => products_path
  end

  private
    def product
      @product = Product.find(params[:id])
    end

    def product_params
      params.require(:product).permit(:name, :category_id, :status)
    end
end
