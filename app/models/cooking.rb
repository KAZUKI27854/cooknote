class Cooking < ApplicationRecord

  belongs_to :user
  has_many :post_comments, dependent: :destroy
  attachment :cooking_image

end
