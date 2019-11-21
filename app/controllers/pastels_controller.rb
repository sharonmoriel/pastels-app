class PastelsController < ApplicationController
  before_action :set_pastel, only: [:show, :edit, :update, :destroy]

  def index
    @pastels = Pastel.geocoded
    @pastels = policy_scope(Pastel)
    @markers = @pastels.map do |pastel|
      {
        lat: pastel.latitude,
        lng: pastel.longitude
      }
    end
  end

  def show
    authorize @pastel
    @order = Order.new
  end

  def new
    @pastel = Pastel.new
    authorize @pastel
  end

  def create
    @pastel = Pastel.new(pastel_params)
    @pastel.user = current_user
    authorize @pastel

    if @pastel.save
      redirect_to pastels_path
    else
      render :new
    end
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
    authorize @pastel
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
