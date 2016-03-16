class AbilitiesController < ApplicationController
  def index
    @abilities = Ability.all
  end

  def show
    @ability = Ability.find(params[:id])
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
    @ability = Ability.find(params[:id])
  end

  def update
    @ability = Ability.find(params[:id])

    if @ability.update(abilities_params)
      redirect_to ability_path(@ability), notice: "Ability was successfully updated!"
    else
      flash.now[:error] = "An error occurred when updating this Ability"
      render :edit
    end
  end

  def destroy
    @ability = Ability.find(params[:id])
    @ability.destroy

    redirect_to abilities_path, notice: "Ability was successfully deleted"
  end

  private

  def abilities_params
    params.require(:ability).permit(:name)
  end
end
