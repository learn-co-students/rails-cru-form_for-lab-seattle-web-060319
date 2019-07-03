class GenresController < ApplicationController

  def show
    find_genre
  end

  def index
    @genres = Genre.all
  end

  def new
    @genre = Genre.new
  end

  def edit
    find_genre
  end

  def create
    @genre = Genre.new(params.require(:genre).permit(:name))
    @genre.save
    redirect_to genre_path(@genre)
  end

  def update
    find_genre
    @genre.update(params.require(:genre).permit(:name))
    redirect_to genre_path(@genre)
  end

  private

  def find_genre
    @genre = Genre.find(params[:id])
  end

end
