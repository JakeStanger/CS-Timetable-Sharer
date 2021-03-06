class UsersController < ApplicationController
  before_action :require_user, only: %i[index show destroy]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id # Create new session
      redirect_to '/'
    else
      redirect_to '/signup'
    end
  end

  def show
    @user = current_user
  end

  private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :username, :password)
    end
end
