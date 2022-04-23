class BooksController < ApplicationController
  def new
    #@book=Book.new
  end

  def index
    @book=Book.new
    @books=Book.all
  end

  def create
    book=Book.new(book_params)
    book.save
    redirect_to "https://6fead938a662461f86d320d2f7a5071c.vfs.cloud9.us-east-1.amazonaws.com/"
  end

  def show
  end

  def edit
  end

  private

  def book_params
    params.require(:book).permit(:title,:body)
  end
end
