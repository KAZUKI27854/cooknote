class UsersController < ApplicationController
  def create
    @user = User.new
    redirect_to user_path(current_user.id)
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


end
