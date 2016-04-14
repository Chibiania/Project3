class CommentsController < ApplicationController

  # before_action do
  #   if params[:id]
  #     @snack = Snack.find(params[:id])
  #   end
  # end

  def index
    @snack = Snack.find(params[:snack_id])
    @comments = @snack.comments
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
  # AM: I would EITHER specificy a comment's snack in the controller action OR strong params. No need to do both.
  # AM: And if you think about it, if the comment's snack is being determined by the snack_id in the route, you don't want to allow the user to select the snack via his/her input.
  def comment_params
    params.require(:comment).permit(:name, :message, :snack_id)
  end
end
