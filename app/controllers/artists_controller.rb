class ArtistsController < ApplicationController

  def index
    @artist = Artist.all
  end

  def show
    find_artist_params
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.create(artist_params)
    redirect_to artist_path(@artist)
  end

  def edit
    find_artist_params
  end


  def update
    find_artist_params
    @artist.update(artist_params)
    redirect_to artist_path(@artist)
  end




  private

  def artist_params
    params.require(:artist).permit(:name,:bio)
  end

  def find_artist_params
    @artist = Artist.find(params[:id])
  end



end
