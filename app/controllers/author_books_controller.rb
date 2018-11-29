class AuthorBooksController < ApplicationController
  before_action :find_author_book, only:[:show, :edit, :update, :destroy]
def show
  #empty
  @authors = Author.all
  @books = Book.all
end

def new
  @author_book = AuthorBook.new(author_book_params)
end

def create
  @author_book = AuthorBook.new(author_book_params)
  @author_book.save
  redirect_to @authorship.book 
end

def edit
@authors = Author.all
@books = Book.all
end

def update
  @author_book.update(author_book_params)
  redirect_to @author_book
end

def destroy
@author_book.destroy
redirect_to book_path
end

private
def find_author_book
  @author_book = AuthorBook.find(params[:id])
end
def author_book_params
  params.require(:author_book).permit(:author_id, :book_id)
end
end
