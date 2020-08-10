class BooksController < ApplicationController
  before_action :set_book, only: :show

  # GET /books
  # GET /books.json
  def index
    render json: Book.all, include: :authors, status: 200
  end

  # GET /books/1
  # GET /books/1.json
  def show
    render json: @book, include: :authors, status: 200
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:id])
    end
end
