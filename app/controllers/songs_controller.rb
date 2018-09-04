class SongsController < ApplicationController
  def show
    @song = Song.find(params[:id])
    @genre = Genre.find(@song.genre_id)
    @artist = Artist.find(@song.artist_id)
  end

  def new
    @song = Song.new
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])
    @song.update(params.require(:song).permit(:name,:artist_id,:genre_id))
    redirect_to song_path(@song)
  end

  def create
    @song = Song.new
    @song.name = params[:song][:name]
    @song.genre_id = params[:song][:genre_id]
    @song.artist_id = params[:song][:artist_id]
    @song.save
    redirect_to song_path(@song)
  end

  def index
    @songs = Song.all
  end
end
