class CommentsController < ApplicationController
  def index
    @snack = Snack.find(params[:snack_id])
    @comments = @snack.comments
  end

  def create
    @snack = Snack.find(params[:snack_id])
    @comment = @snack.comments.create(comments_params)
  end

  private
  def comment_params
    params.require(:comment).permit(:name, :message, :snack_id)
  end
end
