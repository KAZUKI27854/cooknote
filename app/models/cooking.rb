class Cooking < ApplicationRecord

  belongs_to :user
  attachment :cooking_image

end
