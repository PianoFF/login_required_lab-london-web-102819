class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_user
    session[:name]
  end 

  
  private 
  def login_valid
      unless session[:name] && !session[:name].empty?
          redirect_to new_session_path
      end 
  end 
end
