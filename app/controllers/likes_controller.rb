class LikesController < ApplicationController
  def create
    @like = current_user.likes.create(pioneertype_id: params[:pioneertype_id])
    @likes = Like.where(pioneertype_id: params[:pioneertype_id])
    @pioneertype = Pioneertype.find(params[:pioneertype_id])
  end

  def destroy
    like = Like.find(params[:id])
    like.destroy
    @likes = Like.where(pioneertype_id: params[:pioneertype_id])
    @pioneertype = Pioneertype.find(params[:pioneertype_id])
  end
end
