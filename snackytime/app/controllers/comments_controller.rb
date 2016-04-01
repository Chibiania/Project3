class CommentsController < ApplicationController
  def index
    @snack = Snack.find(params[:snack_id])
    @comments = @snack.comments
  end

  def created_at
    @snack = Snack.find(params[:snack_id])
    @comment = @snack.comments.create(comments_params)
    redirect_to snack_path(@snack)
  end

  private
  def comment_params
    params.require(:comment).permit(:name, :message, :snack_id)
  end
end
