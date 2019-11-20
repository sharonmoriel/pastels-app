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
    @pastel = @order.pastel

    if @order.quantity > @pastel.stock
      redirect_to pastel_path(@pastel)
      flash[:alert] = "Not enough stock"
    elsif @order.save
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
    @pastel = @order.pastel

    if @order.quantity > @pastel.stock
      flash[:alert] = "Not enough stock, please try again"
    elsif @order.update(order_params)
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
