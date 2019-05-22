class UsersController < ApplicationController
  before_action :authenticate_user!
 
  def edit
    
  	@user = User.find(params[:id])

    # ログインユーザー以外は編集禁止
    if @user.id != current_user.id
      #redirect_to users_path
      redirect_to user_path(current_user.id)
    end

  end

  def index
  	@user = User.find(current_user.id)
  	@book = Book.new
  	@users = User.all
  end

  def show
  	@user = User.find(params[:id])
  	@book = Book.new
  	#@books = Book.all
  	@books = @user.books
  end

  def update
  	@user = User.find(params[:id])
    # エラーの場合は、editページのままにする。
  	if @user.update(user_params)
      flash[:notice] = "You have updated user successfully."
      redirect_to user_path(@user.id)
    else
      render :edit
    end
  	
  end

  # ストロングパラメータ
  def user_params
  	params.require(:user).permit(:name, :introduction, :profile_image)
  end
end
