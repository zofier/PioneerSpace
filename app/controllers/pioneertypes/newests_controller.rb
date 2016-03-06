class Pioneertypes::NewestsController < ApplicationController
  def index
    @pioneertypes = Pioneertype.page(params[:page]).per(8).order('created_at DESC')
    render template: "pioneertypes/index"
  end
end
