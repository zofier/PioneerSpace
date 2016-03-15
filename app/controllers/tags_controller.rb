class TagsController < ApplicationController

  def index
    @tags = ActsAsTaggableOn::Tag.order('id DESC')
  end

  def show
    @tag = ActsAsTaggableOn::Tag.find_by(name: params[:tag_name])
    @pioneertypes = Pioneertype.tagged_with(@tag).page(params[:page])
  end
end
