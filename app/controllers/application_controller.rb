class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :require_login
 
  helper_method :current_user_session, :current_user
  def require_login
    unless current_user
      flash[:notice] = "You're not logged in!"
      redirect_to new_user_session_path
      return false
    end
    return true
  end
  protected
    def current_user_session
      @current_user_session = UserSession.find
    end
    def current_user
      current_user ||= current_user_session && current_user_session.user
    end
end
