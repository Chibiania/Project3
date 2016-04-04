class SnacksController < ApplicationController

  def index
    respond_to do |format|
      format.html
      format.json{ render json: Snack.all }
    end

  end

  def show
    @snack = Snack.find(params[:id])
    render json: @snack.to_json, status: :ok
  end

  # do we need this??? I think this is just in case we want a 'new' rails view --Cam
  # new page
  # def new
  #   @snack = Snack.new
  # end

  # actually makes the new thing
  def create
    @snack = Snack.create(snack_params)
    render json: @snack, status: :ok
  end

  # edit page
  def edit
    @snack = Snack.find(params[:id])
  end

  # actually updates the thing
  def update
    @snack = Snack.find(params[:id])
    @snack.update!(snack_params)
    render json: @snack, status: :ok
  end

  def destroy
    @snack = Snack.find(params[:id])
    @snack.destroy
    render json: {message: "success"}, status: :ok
  end

  private
  def snack_params
    params.require(:snack).permit(:name, :image_url, :country, :description, :mood, :taste, :nutrition_level, :seller_url, :video_url)
  end

end
