class BooksController < ApplicationController
  include Wor::Paginate
  rescue_from ActiveRecord::RecordNotFound, with: :error_404

  def error_404
    render json: { message: 'The record was not found' }, status: :not_found
  end

  def index
    books = Book.all
    render json: books, each_serializer: BookSerializer
  end

  def show
    book = Book.find(params[:id])
    render json: book, each_serializer: BookSerializer
  end
end
