class BooksController < ApplicationController
before_action :find_book, only: [:show, :edit, :update]
  def index
    @books = Book.all
  end

  def show
    @authors = Author.all
    @author_books = AuthorBook.all
    @author_book = AuthorBook.new
  end

  def edit

  end

  def update
    @book.update(book_params)
    redirect_to @book
  end

  private
  def find_book
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:title, :pages)
  end

end
