class OrdersController < ApplicationController
  include Pagy::Backend

  def index
    @q = Order.where(shop_id: current_shop.id).
      order(id: desc).ransack(params[:q])
    @pagy, @orders = pagy(@q.result(distinct: true), items: params[:per_page] || 20)
  end

  def show; end

  def new; end

  def create; end

  def edit; end

  def update; end

  def destroy; end
end
