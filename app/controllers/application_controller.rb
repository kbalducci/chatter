class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # before_action :set_new_user
  # before_action :set_new_chat

  before_action :configure_permitted_parameters, if: :devise_controller?

  # def set_new_user
  #   @new_user = User.new
  # end

  # def set_new_chat
  #   @new_chat = Chat.new
  # end

 protected

 def configure_permitted_parameters
   devise_parameter_sanitizer.for(:sign_up).push(:first_name, :last_name, :profile_name, :location, :photo_url)
 end



end
