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
  end

  def create
    Pioneertype.create(pioneertype_params)
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

  def newest
    @pioneertypes = Pioneertype.page(params[:page]).per(8).order('created_at DESC')
    render :template => "pioneertypes/index"
  end

  def popular
    @pioneertypes = Pioneertype.page(params[:page]).per(8).order('likes_count DESC')
    render :template => "pioneertypes/index"
  end

  private
  def pioneertype_params
    params.require(:pioneertype).permit(:title, :concept, :catchcopy, pioneertype_images_attributes: [:id, :image, :status, :pioneertype_id]).merge(user_id: current_user.id)
  end

  def set_pioneertype
    @pioneertype = Pioneertype.find(params[:id])
  end
end
