class SongsController < ApplicationController
    before_action :set_song, only: [:show, :edit, :update, :destroy]

  def index
    @songs = Song.all
  end


  def new
    @song = Song.new
  end

  def show
  end

  def create
    @song = Song.new(set_params)
    @song.save
    redirect_to @song
  end

  def edit
  end

  def update
    @song.update(set_params)
    redirect_to @song
  end

  def destroy
    @song.delete(set_params)
  end

  private

    def set_song
      @song = Song.find(params[:id])
    end

    def set_params
      params.require(:song).permit(:name, :genre_id, :artist_id)
    end





  end
