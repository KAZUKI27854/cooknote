class CreateCookings < ActiveRecord::Migration[5.2]
  def change
    create_table :cookings do |t|
      t.text :title
      t.text :ingredients
      t.text :process
      t.string :cooking_image
      t.integer :cooking_image_id
      t.integer :user_id

      t.timestamps
    end
  end
end
