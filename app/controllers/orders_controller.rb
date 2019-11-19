class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy, :review]

  def show
  end

  def new
    @orders = Order.new
  end

  def create
    @order = Order.new(order_params)
    @order.user = current_user

    if @order.save
      @pastel = @order.pastel
      @pastel.stock -= @order.quantity
      @pastel.save!
      redirect_to order_path(@order)
    else
      render :new
      # needs to be changed when we have a pastel show page
    end
  end

  def edit
  end

  def update
    if @order.update(order_params)
      redirect_to order_path(@order)
    else
      render :edit # print edit.html.erb
    end
  end

  def destroy
    @order.destroy

    redirect_to order_path(@order.user)
  end

  def review
  end

  private

  def set_order
    @order = Order.find(params[:id])
  end

  def order_params
    params.require(:order).permit(:pastel_id, :user_id, :quantity, :order_date, :review)
  end
end
