class ApplicationController < ActionController::Base
  delegate :current_user, :user_signed_in?, to: :user_session
  helper_method :current_user, :user_signed_in?

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def user_session
    UserSession.new(session)
  end

  def require_authentication
    redirect_to login_user_path, alert: t('flash.alert.needs_login') unless user_signed_in?
  end

  def require_no_authentication
    redirect_to root_path, notice: t('flash.notice.already_logged_in') if user_signed_in?
  end
end
