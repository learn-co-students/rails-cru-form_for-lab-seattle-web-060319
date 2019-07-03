class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show, :edit, :update, :destroy]

def index
  @artists = Artist.all
end

def show
end

def new
  @artist = Artist.new

end

def create
  @artist = Artist.new(set_params)
  @artist.save
  redirect_to @artist
end

def edit
end

def update
  @artist.update(set_params)
  redirect_to @artist
end

def destroy
  @artist.delete(set_params)
end

private

  def set_artist
    @artist = Artist.find(params[:id])
  end

  def set_params
    params.require(:artist).permit(:name, :bio)
  end





end
