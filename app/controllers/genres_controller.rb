class GenresController < ApplicationController
    before_action :set_genre, only: [:show, :edit, :update, :destroy]

  def index
    @genres = Genre.all
  end

  def new
    @genre = Genre.new

  end

  def create
    @genre = Genre.new(set_params)
    @genre.save
    redirect_to @genre
  end

  def edit
  end

  def update
    @genre.update(set_params)
    redirect_to @genre
  end

  def destroy
    @genre.delete(set_params)
  end

  private

  def set_genre
    @genre = Genre.find(params[:id])
  end

  def set_params
    params.require(:genre).permit(:name, :bio)
  end


end
