class HousesController < ApplicationController

  def index
    @houses = House.all
  end

  def show
    @house = House.find(params[:id])
  end

  def new
    @house = House.new
  end

  def create
    @house = House.new(house_params)
    @house.save
    render :new
  end

  def update
    @house = House.find(params[:id])
    @house.update(house_params)
    redirect_to @house
  end

  def edit
    @house = House.find(params[:id])
  end

  def destroy
    @house = House.find(params[:id])
    @house.destroy
    redirect_to @house
  end


  private

  def house_params
    params.require(:house).permit(:name, :image_url, :state)
  end

end
