class CommentsController < ApplicationController

  # before_action do
  #   if params[:id]
  #     @snack = Snack.find(params[:id])
  #   end
  # end

  def index
    # @snack = Snack.find(params[:snack_id])
    @comments = Comment.all
    render json: @comments.to_json, status: :ok
  end

  def create
    # @snack = Snack.find(params[:snack_id])
    @comment = Comment.create(comment_params)
    render json: @comment.to_json, status: :ok
  end

  def show
    @snack = Snack.find(params[:snack_id])
    @comment = Comment.find(params[:id])
  end

  private
  def comment_params
    params.require(:comment).permit(:name, :message, :snack_id)
  end
end
