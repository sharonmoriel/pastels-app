class PastelsController < ApplicationController
  before_action :set_pastel, only: [:show, :edit, :update, :destroy]

  def index
    @pastels = Pastel.all
  end

  def new
    @pastel = Pastel.new
  end

  def create
    @pastel = Pastel.new(garden_params)
    @pastel.user = current_user

    if @pastel.save
      redirect_to pastel_path
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
    params.require(:pastel).permit(:name, :size, :photo_url, :covered, :location)
  end
end
