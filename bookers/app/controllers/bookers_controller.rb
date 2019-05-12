class BookersController < ApplicationController
  def top
  end

  def index
  	@books = Book.all
  end

  def show
  	@book = Book.find(params[:id])
  end

  def edit
  end
end
