class PioneertypesController < ApplicationController
before_action :set_pioneertype, only: [:destroy, :edit, :show, :update]

  def index
    @pioneertypes = Pioneertype.page(params[:page]).per(8)
  end

  def new
    @pioneertype = Pioneertype.new
    @pioneertype.pioneertype_images.new
  end

  def show
    @comment = Comment.new
    @likes = Like.where(pioneertype_id: params[:id])
    @like = @pioneertype.likes.find_by(user_id: current_user.try(:id))
  end

  def create
    current_user.pioneertypes.create(pioneertype_params)
    redirect_to root_path
  end

  def edit
    @pioneertype.pioneertype_images.new
  end

  def update
    @pioneertype.update(pioneertype_params)
    redirect_to root_path
  end

  def destroy
    @pioneertype.destroy
    redirect_to root_path
  end

  private
  def pioneertype_params
    params.require(:pioneertype).permit(:title, :concept, :catchcopy, pioneertype_images_attributes: [:id, :image, :status, :pioneertype_id])
  end

  def set_pioneertype
    @pioneertype = Pioneertype.find(params[:id])
  end
end
