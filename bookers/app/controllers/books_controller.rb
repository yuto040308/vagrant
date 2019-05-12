class BooksController < ApplicationController
  def top
  end

  def index
  	@books = Book.all
    @book = Book.new
  end

  def show
  	@book = Book.find(params[:id])
  end

  def edit
  end
end
