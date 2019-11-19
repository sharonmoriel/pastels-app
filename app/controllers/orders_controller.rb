class OrdersController < ApplicationController
  before_action :set_order

  def show
  end

  def new
    @orders = Order.new
  end

  def create
    @order = Order.new(order_params)

    render :new unless @order.save
  end

  def edit
  end

  def update
    if @order.update(order_params)
      redirect_to order_path(@order), notice: 'Updated!'
    else
      render :edit # print edit.html.erb
    end
  end

  def destroy
    @order.destroy

    redirect_to order_path(@order.user)
  end

  private

  def set_order
    @order = Order.find(params[:id])
  end

  def order_params
    params.require(:order).permit(:pastel_id, :user_id, :quantity, :order_date, :review)
  end
end
