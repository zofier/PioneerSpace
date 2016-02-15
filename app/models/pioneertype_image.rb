class PioneertypeImage < ActiveRecord::Base

  enum status: { main: 0, sub: 1 }

  belongs_to :pioneertype
  belongs_to :user

  mount_uploader :image, PioneertypeImageUploader

end
