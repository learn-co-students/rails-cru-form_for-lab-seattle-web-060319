class GenresController < ApplicationController
    before_action :set_genre, only:[:show, :update, :edit]

    def index
        @genres = Genre.all 
    end

    def new
        @genre = Genre.new
    end

    def show
        set_genre
    end

    def create
        @genre = Genre.create(genre_params(:name))
        redirect_to genre_path(@genre)
    end

    def update
        set_genre
        @genre.update(genre_params(:name))
        redirect_to @genre
    end

    def destroy
        set_genre.destroy
        redirect_to genres_path
    end

private

def set_genre
    @genre = Genre.find(params[:id])
end

def genre_params(*args)
    params.require(:genre).permit(*args)
end

end
