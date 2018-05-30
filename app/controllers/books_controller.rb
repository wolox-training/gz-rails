class BooksController < ApplicationController
  include Wor::Paginate
  
  def index
    books = Book.all
    render_paginated json: books
  end
  
  def show
    book = Book.find(params[:id])
    render_paginated json: book
  end
end
