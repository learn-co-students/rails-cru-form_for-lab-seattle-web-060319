class SongsController < ApplicationController

    before_action :set_song, only: [:edit, :update, :show, :delete]

    def index
        @songs = Song.all 
    end

    def show
        set_song
    end

    def new
        @song = Song.new
    end

    def edit 
        set_song
    end

    def update 
        set_song
        @song.update(song_params(:name))
        redirect_to(@song)
    end

    def create
        @song = Song.create(song_params(:name, :artist_id, :genre_id))
        redirect_to @song
    end

    def destroy
        set_song.destroy
        redirect_to songs_path
    end

    private

    def set_song
        @song = Song.find(params[:id])
    end

    def song_params(*args)
        params.require(:song).permit(*args)
    end

end