class UserController < ApplicationController
  before_action :authenticate_user!, only: [:show]

  def show
    @users = User.all
    @user = User.find(params[:id])
  end
end
