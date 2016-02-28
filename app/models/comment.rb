class Comment < ActiveRecord::Base

  belongs_to :pioneertype
  belongs_to :user

end
