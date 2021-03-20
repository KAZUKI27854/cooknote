class CookingsController < ApplicationController
  def new
    
  end
  
  def create
    @cooking = Cooking.new(cooking_params)
    @cooking.save
    redirect_to cooking_path
  end
  
  def show
  end
  
  def index
  end
  
  def edit
  end
  
  def update
  end
  
  def destroy
  end
  
  private
  
  def cooking_params
    params.require(:cooking).permit(:title, :ingredients, :process, :cooking_image)
  end
  
end
