class BooksController < ApplicationController
  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    @book.save
    redirect_to user_path(current_user.id)
  end

  def edit
  end

  def update
  end

  def show
    @book = Book.find(params[:id])
    @user = User.find(current_user.id)
  end

  def index
    
  end

  def destroy
  end

  def new
    
  end

  # ストロングパラメータ
  private
  def book_params
    params.require(:book).permit(:title, :body, :user_id)
  end

end
