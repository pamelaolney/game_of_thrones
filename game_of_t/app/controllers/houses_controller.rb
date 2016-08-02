class HousesController < ApplicationController

  def index
    @houses = House.all
  end

  def show
    @house = House.find(params[:id])
  end
  def update
    @house = House.find(params[:id])
    @house.update(house_params)
    redirect_to @house
  end

  def edit
    @house = House.find(params[:id])
  end

  private

  def house_params
    params.require(:house).permit(:name, :image_url, :state)
  end

end
