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
      if @house.save
        flash[:notice] = "A house was successfully created."
        redirect_to @house
      else
        render :new
      end
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
      if @house.destroy
      flash[:alert] = "The house #{@house.name} has been deleted"
      redirect_to @house
    end
  end


  private

  def house_params
    params.require(:house).permit(:name, :image_url, :state)
  end

end
