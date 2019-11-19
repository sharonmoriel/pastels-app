class PastelsController < ApplicationController
  before_action :set_pastel, only: [:show, :edit, :update, :destroy]

  def index
    @pastels = Pastel.all
  end

  def new
    @user = User.find(params[:user_id])
    @pastel = Pastel.new
  end

  def create
    @user = User.find(params[:user_id])
    @pastel = Pastel.new(pastel_params)
    @pastel.user = @user

    if @pastel.save
      redirect_to user_pastels_path(@user)
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
    @pastel.destroy
  end

  private

  def set_pastel
    @pastel = Pastel.find(params[:id])
  end

  def pastel_params
    params.require(:pastel).permit(:name, :description, :stock, :price, :photo)
  end
end
