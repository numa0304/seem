class StudentsController < ApplicationController
 
  def search
     @search = Student.search(params[:q])
     @students = @search.result(distinct: true)
  end

  def index
  	 @students = Student.all
  end

end
