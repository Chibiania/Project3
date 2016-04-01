class SnacksController < ApplicationController

  def index
    @snack = Snack.all
  end

  def show
    @snack = Snack.find(params[:id])
  end

  # new page
  def new
    @snack = Snack.new
  end

  # actually makes the new thing
  def create
    @snack = Snack.create(snack_params)
  end

  # edit page
  def edit
    @snack = Snack.find(params[:id])
  end

  # actually updates the thing
  def update
    @snack = Snack.find(params[:id])
    @snack.update(snack_params)
  end

  def destroy
    @snack = Snack.find(params[:id])
    @snack.destroy
  end

  private
  def snack_params
    params.require(:snack).permit(:name, :image_url, :country, :description, :mood, :taste, :nutrition_level, :seller_url)
  end

end
