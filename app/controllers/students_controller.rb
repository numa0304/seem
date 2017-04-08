class StudentsController < ApplicationController
 
  def search
     @search = Student.search(params[:q])
     @students = @search.result(distinct: true)
  end

  def index
  	 @students = Student.all
  end
  
  def my_page
      @user = Student.where(:id=> current_student.id)
      @posts = Post.where(:student_id=> @user)
  end

end
