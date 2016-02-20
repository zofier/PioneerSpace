class PioneertypesController < ApplicationController
before_action :set_pioneertype, only: [:destroy, :edit, :show]

  def index
    @pioneertypes = Pioneertype.page(params[:page]).per(8)
  end

  def new
    @pioneertype = Pioneertype.new
    @pioneertype.pioneertype_images.new
  end

  def show
  end

  def create
    Pioneertype.create(pioneertype_params)
    redirect_to root_path
  end

  def edit
  end

  def update
    current_user.pioneertype.update(pioneertype_params)
    redirect_to root_path
  end

  def destroy
    @pioneertype.destroy
    redirect_to root_path
  end

  private
  def pioneertype_params
    params.require(:pioneertype).permit(:title, :concept, :catchcopy, pioneertype_images_attributes: [:id, :image, :status, :pioneertype_id]).merge(user_id: current_user.id)
  end

  def set_pioneertype
    @pioneertype = Pioneertype.find(params[:id])
  end
end
