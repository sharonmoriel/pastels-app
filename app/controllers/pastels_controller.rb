class PastelsController < ApplicationController
  before_action :set_pastel, only: [:show, :edit, :update, :destroy]

  def index
    @pastels = policy_scope(Pastel)
  end

  def new
    @pastel = Pastel.new
    authorize @pastel
  end

  def create
    @pastel = current_user.pastels.new(pastel_params)
    authorize @pastel

    if @pastel.save
      redirect_to pastels_path
    else
      render :new
    end
  end

  def show
    authorize @pastel
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
    params.require(:pastel).permit(:name, :description, :price, :stock, :photo)
  end
end
