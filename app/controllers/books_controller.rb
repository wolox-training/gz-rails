class BooksController < ApplicationController
  include Wor::Paginate

  def index
    books = Book.all
    render_paginated json: books, each_seralizer: BookSerializer
  end

  def show
    book = Book.find(params[:id])
    render json: book, each_seralizer: BookSerializer
  end
end
