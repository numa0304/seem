class PostsController < ApplicationController
  def new
  end

  def create
    @post = Post.new
    @post.text = params[:text]
    @post.save 
    redirect_to post_path(@post.id)
  end

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end
end
