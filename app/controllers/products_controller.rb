class ProductsController < ApplicationController
  respond_to :html, :json

  helper_method :array_categories

  def show
    product
  end

  def index
    if params[:category_id].blank?
      @products =Product.sorted.all
    else
      @products =Product.by_category_id(params[:category_id])
    end
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

  def destroy
    @product = Product.find(params[:id])

    @product.destroy

    respond_with @product, :location => products_path

  end

  def activate
    @product = Product.find(params[:id])
    @product.update_attribute(:status, true)
    respond_to do |format|
      format.json {render json: @product}
    end
  end

  def deactivate
    @product = Product.find(params[:id])
    @product.update_attribute(:status, false)

    respond_to do |format|
      format.json {render json: @product}
    end

  end

  def actions_with_selected
    unless params[:products_ids].nil?
      case params[:commit]
        when "Remover todos os selecionados"
          params[:products_ids].each  do |id|
            Product.find(id).destroy
          end
          flash[:notice] = "Produto(s) removido(s) com sucesso."
        when "Ativar todos os selecionados"
          params[:products_ids].each  do |id|
            Product.find(id).update_attribute(:status, true)
          end
          flash[:notice] = "Produto(s) ativado(s) com sucesso."
        when "Desativar todos os selecionados"
          params[:products_ids].each  do |id|
            Product.find(id).update_attribute(:status, false)
          end
          flash[:notice] = "Produto(s) desativado(s) com sucesso."
      end
    else
      flash[:error] = "É preciso selecionar um produto para executar essa ação."
    end
    redirect_to products_path
  end

  private

    def array_categories
      [['Todas', '']] + Category.all.map { |category| [category.name, category.id] }
    end

    def product
      @product = Product.find(params[:id])
    end

    def product_params
      params.require(:product).permit(:name, :category_id, :status)
    end
end
