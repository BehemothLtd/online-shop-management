class OrdersController < ApplicationController
  include Pagy::Backend

  def index
    @q = Order.where(shop_id: current_shop.id).
      order(id: :desc).ransack(params[:q])
    @pagy, @orders = pagy(@q.result(distinct: true), items: params[:per_page] || 20)
  end


  def show; end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)

    @order[:shop_id] = current_shop[:id]
    if @order.save
      redirect_to orders_path, notice: "Order was successfully created"
    else
      render :new
    end
  end

  def edit
    @order = Order.find(params[:id])
  end

  def update
    @order = Order.find(params[:id])
    if @order.update(order_params)
      redirect_to edit_order_path(params[:id]), notice: "Order was successfully updated"
    else
      render :edit
    end
  end

  def destroy; end

  def order_params
    params.require(:order).permit(
      :name, :phone, :address, :note
    )
  end
end
