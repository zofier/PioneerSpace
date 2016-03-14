class Pioneertypes::PopularsController < ApplicationController
  def index
    @pioneertypes = Pioneertype.page(params[:page]).per(8).order('likes_count DESC')
    render template: "pioneertypes/index"
  end
end
