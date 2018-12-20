class UsersController < ApplicationController

  def index
    @user = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
    redirect_to user_path(@user)
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    # render plain: params[:item].inspect
    if    @user.update(user_params)
    redirect_to user_path
    else
      render 'edit'
    end
  end

 def destroy
    @user.destroy
    redirect_to users_path
  end

  private
    def user_params
      params.require(:user)
    end
end

