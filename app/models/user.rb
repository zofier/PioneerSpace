class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates_presence_of :username, :avatar, :group, :profile, :work

  has_many :pioneertypes
  has_many :likes
  has_many :comments

  mount_uploader :avatar, AvatarUploader
end
