class FavoritesController < ApplicationController

  def create
    cooking = Cooking.find(params[:cooking_id])
    favorite = current_user.favorites.new(cooking_id: cooking.id)
    favorite.save
    redirect_to cooking_path(cooking)
  end

  def destroy
    cooking = Cooking.find(params[:cooking_id])
    favorite = current_user.favorites.find_by(cooking_id: cooking.id)
    favorite.destroy
    redirect_to cooking_path(cooking)
  end

end
