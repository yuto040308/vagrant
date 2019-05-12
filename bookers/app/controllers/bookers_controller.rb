class BookersController < ApplicationController
  def top
  end

  def index
  	@books = Book.all
  end

  def show
  end

  def edit
  end
end
