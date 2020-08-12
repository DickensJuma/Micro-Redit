class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(param[:id])
  end

  def create
    @user = User.create(params[:id])
  end

  def edit
    @user = User.find(param[:id])
    @user.update!(params)
  end

  def delete
    @user = User.find(param[:id])
    @user.destroy
  end
end
