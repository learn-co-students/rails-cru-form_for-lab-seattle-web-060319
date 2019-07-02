class ArtistsController < ApplicationController

    before_action :set_artist, only:[:show, :update, :edit]

    def index
        @artists = Artist.all 
    end

    def new
        @artist = Artist.new
    end

    def show
        set_artist
    end

    def create
        @artist = Artist.create(artist_params(:name, :bio))
        redirect_to artist_path(@artist)
    end

    def update
        set_artist
        @artist.update(artist_params(:name, :bio))
        redirect_to @artist
    end

    def destroy
        set_artist.destroy
        redirect_to artists_path
    end

private

def set_artist
    @artist = Artist.find(params[:id])
end

def artist_params(*args)
    params.require(:artist).permit(*args)
end

end
