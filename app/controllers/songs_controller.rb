class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    #byebug
    @song = Song.find(params[:id])
    #@artist = @song.artist_id
  end

  def new
    @song = Song.new
  end

  def create
    Song.create(params.require(:song).permit(:name, :artist_id, :genre_id))
    redirect_to songs_path
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    @song.update(params.require(:song).permit(:name, :artist_id, :genre_id))
    redirect_to songs_path
  end





end
