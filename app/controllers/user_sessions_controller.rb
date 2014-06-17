class UserSessionsController < ApplicationController
  before_action :require_no_authentication, only: [:new, :create]
  before_action :require_authentication, only: :destroy

  def new
    @user_session = UserSession.new(session)
  end

  def create
    @user_session = UserSession.new(session, params[:user_session])
    if  @user_session.authenticate!
      redirect_to root_path, notice: 'Login successfull'
    else
      render :new
    end
  end

  def destroy
    user_session.destroy
    redirect_to root_path, notice: 'Logged out!'
  end
end
