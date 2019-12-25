class ApplicationController < ActionController::Base
  helper_method :current_user,:logged_in?,:users_online


  def users_online
    if ActionCable.server.connections.length > 0
      users ||= ActionCable.server.connections.count
      return users
    end

  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end


  def logged_in?
    !!current_user

  end


  def require_user
    if !logged_in?
      flash[:error] = "You must be logged in"
      redirect_to login_path
    end
  end



end
