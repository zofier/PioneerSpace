class Pioneertype < ActiveRecord::Base

  validates_presence_of :catchcopy, :title, :concept, :user_id

  has_many :pioneertype_images
  belongs_to :user
  accepts_nested_attributes_for :pioneertype_images

end
