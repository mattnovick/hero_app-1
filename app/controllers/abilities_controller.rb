class AbilitiesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :find_ability, only: [:show, :edit, :update, :destroy]

  def index
    @abilities = Ability.all
  end

  def show
  end

  def new
    @ability = Ability.new
  end

  def create
    @ability = Ability.new(abilities_params)

    if @ability.save
      redirect_to ability_path(@ability), notice: "Ability was successfully created"
    else
      flash.now[:error] = "An error occurred when saving this Ability"
      render :new
    end
  end

  def edit
  end

  def update
    if @ability.update(abilities_params)
      redirect_to ability_path(@ability), notice: "Ability was successfully updated!"
    else
      flash.now[:error] = "An error occurred when updating this Ability"
      render :edit
    end
  end

  def destroy
    @ability.destroy

    redirect_to abilities_path, notice: "Ability was successfully deleted"
  end

  private

  def find_ability
    @ability = Ability.find(params[:id])
  end

  def abilities_params
    params.require(:ability).permit(:name)
  end
end
