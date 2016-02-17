class Pioneertype < ActiveRecord::Base

  has_many :pioneertype_images
  belongs_to :user
  accepts_nested_attributes_for :pioneertype_images, reject_if: :reject_pioneertype_images

    def reject_pioneertype_images(attributed)
      attributed['image'].blank?
    end

end
