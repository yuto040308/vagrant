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
  end

  def about
  end
end
