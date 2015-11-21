class UsersController < ApplicationController
<<<<<<< HEAD
  before_action :init_user, only: [:show, :edit, :update, :destroy]
  
  def index
     @users = User.paginate page: params[:page], per_page: 10
  end
  
  private
  def init_user
    @user = User.find params[:id]
=======
  
  def index
    @users = User.paginate page: params[:page], per_page: 10
  end
  def show
    @user=User.find(params[:id])
    @is_me = @user.id == current_user.id ? true : false
    if !@is_me
      @status = current_user.status_with @user.id
      @friend = Friend.where(user_id: current_user.id, friend_id:@user.id).try(:first) ||
        Friend.where(user_id: @user.id, friend_id: current_user.id).try(:first)
    end
>>>>>>> root/master
  end
end
