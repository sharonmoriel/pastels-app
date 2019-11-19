class UsersController < ApplicationController
  def show
    @user = current_user
    @pastel = Pastel.find_by(user_id: @user.id)

  end
end
