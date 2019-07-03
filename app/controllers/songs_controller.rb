class SongsController < ApplicationController

  def show
    find_song
  end

  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def edit
    find_song
  end

  def create
    @song = Song.new(params.require(:song).permit(:name, :artist_id, :genre_id))
    @song.save
    redirect_to song_path(@song)
  end

  def update
    find_song
    @song.update(params.require(:song).permit(:name, :artist_id, :genre_id))
    @song.save
    redirect_to song_path(@song)
  end

  private

  def find_song
    @song = Song.find(params[:id])
  end

end
