class Cooking < ApplicationRecord
  attachment :cooking_image
  
  belongs_to :user
end
