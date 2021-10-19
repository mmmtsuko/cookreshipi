class CommentsController < ApplicationController
  def create
    Comment.cretate(comment_params)
  end

  private

  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, dish_id: params[:dish_id])
  end

end
