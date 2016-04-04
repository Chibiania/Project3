class CommentsController < ApplicationController
  def index
    @snack = Snack.find(params[:snack_id])
    @comments = @snack.comments
    render json: @comments.to_json, status: :ok
  end

  def create
    @snack = Snack.find(params[:snack_id])
    @comment = @snack.comments.create(comments_params)
    render json: @comment.to_json, status: :ok
  end

  private
  def comment_params
    params.require(:comment).permit(:name, :message, :snack_id)
  end
end
