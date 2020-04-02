class ProductsController < ApplicationController
  include Pagy::Backend

  def index
    @q = Product.where(shop_id: current_shop.id).order(id: :desc).ransack(params[:q])
    @pagy, @products = pagy(@q.result(distinct: true), items: params[:per_page] || 20)
  end

  def show; end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    @product[:shop_id] = current_shop[:id]
    @product[:code] = current_shop[:id]
    if @product.save
      redirect_to products_path, notice: "Product was successfully created"
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to edit_product_path(params[:id]), notice: "Product was successfully updated"
    else
      render :edit
    end
  end

  def destroy; end

  def product_params
    params.require(:product).permit(
      :name, :price,
      :description, :unit, :stock
    )
  end
end
