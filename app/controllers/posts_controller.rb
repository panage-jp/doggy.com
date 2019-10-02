class PostsController < ApplicationController
  def index
    @posts = Post.includes(:tags).includes(:user).with_attached_images.order(id: "DESC")
    @users = User.all.with_attached_avatar
  end

  def create
    @post = Post.new(post_params)
    @post.save
    if @post.save
      redirect_to posts_path
    else
      redirect_to root_path
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  def show
    @post_show = Post.find(params[:id])
  end

  private

  def post_params
    post_params_result=params.require(:post).permit(:tag_list,:text,images: []).merge(user_id: current_user.id)
    if post_params_result[:images].length > 4
      return nil
    else
      return post_params_result
    end
  end
end
