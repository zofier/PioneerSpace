class Pioneertype < ActiveRecord::Base

  has_many :pioneertype_images
  belongs_to :user
  accepts_nested_attributes_for :pioneertype_images, reject_if: proc { |attributes| attributes['image'].blank? }

end
