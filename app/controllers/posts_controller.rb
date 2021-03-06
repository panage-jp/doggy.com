class PostsController < ApplicationController
  def index
    @posts = Post.includes(comments: :user).includes(:tags).includes(:user).includes(:likes).with_attached_images.order(id: "DESC")
    @users = User.all.with_attached_avatar
    @comment = Comment.new
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
    post = Post.find(params[:id])
    unless current_user && post.user.id == current_user.id
      redirect_to root_path
    else 
      post.destroy
      redirect_to posts_path
    end
  end

  def show
    @post_show = Post.find(params[:id])
    @comment = Comment.new
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
