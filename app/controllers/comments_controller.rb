class CommentsController < ApplicationController

  def create
    current_user.comments.create(comment_params)
    @pioneertype = Pioneertype.find(params[:pioneertype_id])
  end

private
  def comment_params
    params.require(:comment).permit(:text).merge(pioneertype_id: params[:pioneertype_id])
  end
end
