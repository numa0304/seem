class StudentsController < ApplicationController
    def my_page
        @user = Student.where(:id=> current_student.id)
        @posts = Post.where(:student_id=> @user)
    end
end
