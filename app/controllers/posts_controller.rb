class PostsController < ApplicationController
  before_action :set_post, only:[:show, :edit, :destroy]
  before_action :authenticate_user!
  def new
    @post = Post.new
  end

  def create
    @post = Post.new
    @post.text = params[:text]
    @post.save
    redirect_to root_path
  end

  def index
    @posts = Post.all
  end

  def show
  end

  def edit   
  end

  def update
    @post.update(post_params)
    redirect_to @post
  end

private
  def set_post
    @post = Post.find(params[:id])
  end
  # def post_params
  #   params.require(:post).permit(:text, :image, :user_id,)
  # end

  def correct_user
	post = Post.find(params[:id])
	if current_user.id != post.user.id
	  redirect_to root_path
	end
  end
end
