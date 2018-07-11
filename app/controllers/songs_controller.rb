class SongsController < ApplicationController
  def index
    @song = Song.new
    @songs = Song.all
  end

  def create
    @song = Song.new
    @song.name = params[:song][:name]
    @song.save

    redirect_to song_path(@song)
  end

  def show
    @song = Song.find(params[:id])
  end
end
