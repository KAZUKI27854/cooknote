class ChangeDatatypeCookingImageIdOfCookings < ActiveRecord::Migration[5.2]
  def change
    change_column :cookings, :cooking_image_id, :string
  end
end
