class CommentsController < ApplicationController

  def create
    Comment.create(comment_params)
    @pioneertype = Pioneertype.find(params[:pioneertype_id])
  end

private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, pioneertype_id: params[:pioneertype_id])
  end
end
