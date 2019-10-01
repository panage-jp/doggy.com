class UsersController < ApplicationController
  def show
    @user=User.find(params[:id])
    
  end

  def index
    @users = User.with_attached_avatar
  end
end
