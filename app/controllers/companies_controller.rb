class CompaniesController < ApplicationController
  def my_page
      @user = Company.where(:id=> current_company.id)
      @posts = Post.where(:company_id=> @user)
  end
end
