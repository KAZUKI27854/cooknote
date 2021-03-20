class RemoveCookingImageFromCookings < ActiveRecord::Migration[5.2]
  def change
    remove_column :cookings, :cooking_image, :string
  end
end
