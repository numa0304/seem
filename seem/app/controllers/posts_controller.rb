class PostsController < ApplicationController
  before_action :set_post, only:[:show, :edit, :update, :destroy]
  # before_action :authenticate_user!, only: [:new]
  before_action :correct_company, only: [:edit, :update]
  before_action :correct_student, only: [:edit, :update]
  def new
    @post = Post.new
  end


  def create
    # binding.pry
    @post = Post.new(post_params)
    @post.save
    redirect_to students_mypage_path(current_student.id)
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
     @posts = Post.find(params[:id])
     @posts.destroy
     redirect_to students_mypage_path 
  end

private
  def set_post
    @post = current_student.posts.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:text, :image, :student_id)
  end

  # def correct_company
  #   post = Post.find(params[:id])
  #   if current_company.id != post.company.id
  #     redirect_to root_path
  #   end
  # end

  def correct_student
    post = Post.find(params[:id])
    if current_student.id != post.student.id
      redirect_to root_path
    end
  end
end
