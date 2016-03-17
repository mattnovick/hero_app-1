class UniversesController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :find_universe, only: [:show, :edit, :update, :destroy]
  
  def index
    @universes = Universe.all
  end

  def show
  end

  def new
    @universe = Universe.new
  end

  def create
    @universe = Universe.new(universe_params)

    if @universe.save
      flash[:notice] = "Character was successfully created"
      redirect_to universe_path(@universe)
    else
      flash.now[:error] = "An error occurred while saving this universe"
      render :new
    end
  end

  def edit
  end

  def update
    if @universe.update(universe_params)
      redirect_to universe_path(@universe), notice: "Universe was successfully updated!"
    else
      flash.now[:error] = "An error occurred when updating this Universe"
      render :edit
    end
  end

  def destroy
    @universe.destroy

    redirect_to universes_path, notice: "Universe was successfully deleted"
  end

  private

  def find_universe
    @universe = Universe.find(params[:id])
  end

  def universe_params
    params.require(:universe).permit(:name)
  end
end

