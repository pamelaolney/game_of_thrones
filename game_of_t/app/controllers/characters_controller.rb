class CharactersController < ApplicationController

  def new
    @house = House.find(params[:house_id])
    @character = Character.new
  end

  def show
    @character = Character.find(params[:id])
    @house = @character.house
  end

  def create
    @house = House.find(params[:house_id])
    @character = @house.characters.create!(character_params)
    redirect_to @house
  end


  def edit
    @character = Character.find(params[:id])
    @house = @character.house
  end

  def update
    @character = Character.find(params[:id])
    @character.update(character_params)
    redirect_to character_params
  end

  def destroy
    @character = Character.find(params[:id])
    @house = @character.house
    @character.destroy
    redirect_to @house
  end

  private

  def character_params
    params.require(:character).permit(:name, :image_url, :title )
  end

end
