class CharactersController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :find_character, only: [:show, :edit, :update, :destroy]

  def index
    @characters = Character.all
  end

  def show
  end

  def new
    @character = Character.new
  end

  def create
    @character = Character.new(character_params)

    if @character.save
      flash[:notice] = "Character was successfully created"
      redirect_to character_path(@character)
    else
      flash.now[:error] = "An error occurred while saving this character"
      render :new
    end
  end

  def edit
  end

  def update
    if @character.update(character_params)
      redirect_to character_path(@character), notice: "Character was successfully updated!"
    else
      flash.now[:error] = "An error occurred when updating this Character"
      render :edit
    end
  end

  def destroy
    @character.destroy

    redirect_to characters_path, notice: "Character was successfully deleted"
  end

  private

  def find_character
    @character = Character.find(params[:id])
  end

  def character_params
    params.require(:character).permit(:first_name, :last_name, :hero_name, :universe_id, :bio, :ability_ids => [])
  end
end
