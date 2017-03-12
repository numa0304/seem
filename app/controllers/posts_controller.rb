class PostsController < ApplicationController
  before_action :set_post, only:[:show, :edit, :destroy]
  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.save 
    redirect_to @post
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
  def post_params
    params.require(:post).permit(:text)
  end
end
