class Pioneertype < ActiveRecord::Base

  has_many :pioneertype_images
  belongs_to :user
  accepts_nested_attributes_for :pioneertype_images, reject_if: :image_blank?

    def image_blank?(attributed)
      attributed['image'].blank?
    end

    def fetch_sub_image(num)
      pioneertype_images.sub[num]
    end

    def fetch_main_image
      pioneertype_images.main[0].image
    end

end
