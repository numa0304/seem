class PostsController < ApplicationController
  def new
  end

  def create
    @post = Post.new
    @post.text = params[:text]
    @post.save 
    redirect_to new_post_path
  end
end
