class StudentsController < ApplicationController

  def index
    @search = Student.search(params[:q])
    @students = @search.result(distinct: true)
  end
  
  def my_page
      @user = Student.where(:id=> current_student.id)
      @posts = Post.where(:student_id=> @user)
  end

  def show
    @student = Student.find(params[:id])
  end

end
