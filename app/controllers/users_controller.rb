class UsersController < ApplicationController
  def show
    @user=User.find(params[:id])
    @posts = @user.posts.with_attached_images
    @dog = Dog.new
    
  end

  def index
    @users = User.with_attached_avatar
  end
end
