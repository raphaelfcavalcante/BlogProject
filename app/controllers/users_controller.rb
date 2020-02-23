class UsersController < ApplicationController
  layout 'user'

  def index
  end

  def new
    render layout: 'sign_up'
  end

  def create
    @users = User.new(user_params)
    @users.save
    redirect_to @users
  end

  private
    def user_params
      params.require(:users).permit(:email, :password, :name)
    end
end
