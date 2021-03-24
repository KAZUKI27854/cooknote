class CookingsController < ApplicationController
  def new
    @cooking = Cooking.new
  end

  def create
    @cooking = Cooking.new(cooking_params)
    @cooking.user_id = current_user.id
    @cooking.save
    redirect_to cooking_path(@cooking.id)
  end

  def show
    @cooking = Cooking.find(params[:id])
    @post_comment = PostComment.new
  end

  def index
    @cookings = Cooking.page(params[:page]).reverse_order
  end

  def edit
    @cooking = Cooking.find(params[:id])
  end

  def update
    @cooking = Cooking.find(params[:id])
    @cooking.update(cooking_params)
    redirect_to cooking_path(@cooking.id)
  end

  def destroy
    @cooking = Cooking.find(params[:id])
    @cooking.destroy
    redirect_to cookings_path
  end

  private

  def cooking_params
    params.require(:cooking).permit(:title, :ingredients, :process, :cooking_image)
  end

end
