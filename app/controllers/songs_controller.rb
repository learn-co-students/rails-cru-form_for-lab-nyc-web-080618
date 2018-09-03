class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(sub_params)
      if @song.save
        redirect_to song_path(@song)
      else
        render 'new'
      end
  end

  def show
    @song = find_id
  end

  def edit
    @song = find_id
  end

  def update
    @song = find_id
      if @song.update(sub_params)
          redirect_to edit_song_path(@song)
      else
          render 'edit'
        end
  end

  private

  def sub_params
    params.require(:song).permit(:name, :artist_id, :genre_id)
  end

  def find_id
    Song.find(params[:id])
  end

end
