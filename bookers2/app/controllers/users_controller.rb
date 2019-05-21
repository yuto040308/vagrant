class UsersController < ApplicationController
  def edit
  	@user = User.find(params[:id])
  end

  def index
  end

  def show
  	@user = User.find(params[:id])
  	@book = Book.new
  	#@books = Book.all
  	@books = Book.all
  end

  def top
  end

  def update
  	@user = User.find(params[:id])
  	@user.update(user_params)
  	flash[:notice] = "You have updated user successfully."
  	redirect_to user_path(@user.id)
  end

  def about
  end

  # ストロングパラメータ
  def user_params
  	params.require(:user).permit(:name, :introduction, :profile_image)
  end
end
