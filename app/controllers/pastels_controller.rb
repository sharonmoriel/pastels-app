class PastelsController < ApplicationController
  before_action :set_pastel, only: [:show, :edit, :update, :destroy]

  def index
    pastels_all = Pastel.all
    pastels_geocoded = Pastel.geocoded

    if pastels_all.count == pastels_geocoded.count
      @pastels = pastels_geocoded
    else
      @pastels = pastels_all
    end
  end

  def new
    @pastel = Pastel.new
  end

  def create
    @pastel = Pastel.new(pastel_params)
    @pastel.user = current_user

    if @pastel.save
      redirect_to pastels_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @pastel.update(pastel_params)
      redirect_to pastel_path(@pastel)
    else
      render :edit # print edit.html.erb
    end
  end

  def destroy
    @pastel.destroy
  end

  private

  def set_pastel
    @pastel = Pastel.find(params[:id])
  end

  def pastel_params
    params.require(:pastel).permit(:name, :description, :price, :stock, :photo, :address)
  end
end
