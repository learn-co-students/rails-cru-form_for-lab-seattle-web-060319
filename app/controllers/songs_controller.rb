class SongsController < ApplicationController
    before_action :set_song, only: [:show, :update, :edit, :destroy]
    
    def index
        @songs = Song.all
    end

    def new
        @song = Song.new
    end

    def create
        @song = Song.new(song_params)
        if @song.save
            redirect_to @song
        else
            render :new
        end
    end

    def update
        if @song.update(song_params)
            redirect_to @song
        else
            render :edit
        end
    end

    private
        def set_song
            @song = Song.find(params[:id])
        end

        def song_params
            params.require(:song).permit(:name, :genre_id, :artist_id)
        end
end
