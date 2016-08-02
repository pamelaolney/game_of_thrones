class CharactersController < ApplicationController
  def index
    @characters = Character.all
  end

  def show
    @character = Character.find(params[:id])
  end

  def update
    @character = Character.find(params[:id])
    @character.update(character_params)
    redirect_to @character
  end

  def edit
    @character = Character.find(params[:id])

  end

  private

  def character_params
    params.require(:character).permit(:name, :image_url, :title )
  end

end
