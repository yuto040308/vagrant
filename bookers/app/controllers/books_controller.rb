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

  def create
  	book = Book.new(book_params)
  	book.save
  	flash[:notice] = "Book was successfully created."
  	redirect_to book_path(book.id)
  end

  private
  def book_params
  	params.require(:book).permit(:title, :body)
  end

end
