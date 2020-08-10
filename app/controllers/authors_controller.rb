class AuthorsController < ApplicationController
  before_action :set_author, only: :show

  # GET /authors
  # GET /authors.json
  def index
    render json: Author.all, include: :books, status: 200
  end

  # GET /authors/1
  # GET /authors/1.json
  def show
    render json: @author, include: :books, status: 200
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_author
      @author = Author.find(params[:id])
    end
end
