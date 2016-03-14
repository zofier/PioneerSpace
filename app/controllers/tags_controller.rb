class TagsController < ApplicationController

  def index
    @tags = ActsAsTaggableOn::Tag.most_used
  end

  def show
    @tag = params[:tag_name]
    @tags = ActsAsTaggableOn::Tag.find_by(name: params[:tag_name])
    @pioneertypes = Pioneertype.tagged_with(@tag).page(params[:page])
  end
end
