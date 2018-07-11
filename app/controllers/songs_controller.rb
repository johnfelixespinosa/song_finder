class SongsController < ApplicationController
  def index
    @song = Song.new
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def create
    @song = Song.create(song_params)
    # @song.name = params[:song][:name]
    @song.save

    redirect_to song_url(@song)
  end

  private

     def song_params
      params.require(:song).permit(:name)
     end
end
