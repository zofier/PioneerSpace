class TagsController < ApplicationController

  def index
    @tags = ActsAsTaggableOn::Tag.most_used.order('id DESC')
  end

  def show
    @tag = ActsAsTaggableOn::Tag.find_by(name: params[:tag_name])
    @pioneertypes = Pioneertype.order('likes_count DESC').tagged_with(@tag).page(params[:page]).per(8)
  end
end
