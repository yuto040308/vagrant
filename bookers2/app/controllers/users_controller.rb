class UsersController < ApplicationController
  def edit
  end

  def index
  end

  def show
  	@user = User.find(params[:id])
  	@book = Book.new
  	#@books = Book.all
  	@books = @user.book.all
  end

  def top
  end

  def about
  end
end
