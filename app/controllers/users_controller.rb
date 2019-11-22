class UsersController < ApplicationController
  def show
    @user = current_user
    authorize @user
    @my_pastels = Pastel.where(user_id: @user.id)
    @orders_placed = Order.where(user_id: @user.id)
    @orders_received = Order.where(pastel_id: @my_pastels)
  end
end
