class UsersController < ApplicationController
  def show
    @user = current_user
    authorize @user
    @my_pastels = Pastel.where(user_id: @user.id)
  end


end
