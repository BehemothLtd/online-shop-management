class CustomersController < ApplicationController
  include Pagy::Backend

  def index
    @q = Customer.where(shop_id: current_shop.id).order(id: :desc).ransack(params[:q])
    @pagy, @customers = pagy(@q.result(distinct: true), items: params[:per_page] || 20)
  end

  def show; end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)

    @customer[:shop_id] = current_shop[:id]
    if @customer.save
      redirect_to customers_path, notice: "Customer was successfully created"
    else
      render :new
    end
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:id])
    if @customer.update(customer_params)
      redirect_to edit_customer_path(params[:id]), notice: "Customer was successfully updated"
    else
      render :edit
    end
  end

  def destroy; end

  def customer_params
    params.require(:customer).permit(
      :name, :phone, :address, :note
    )
  end
end
