class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?
 
  protected
 
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :gender ])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :grade, :school, :undergraduate, :self_introduction, :work_location, :hobby, :birthplace, :job_category, :circle, :seminar, :high_school, :part_time_job, :club, :department, :profile_image, :birthday])
  end


  # before_filter :configure_permitted_parameters, if: :devise_controller?

  # protected

  # def configure_permitted_parameters
  #   #strong parametersを設定し、usernameを許可
  #   devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:name, :password, :password_confirmation, :email, :gender) }
  # end
end
