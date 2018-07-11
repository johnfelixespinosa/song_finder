class SongsController < ApplicationController
  def index
    @song = Song.new
    @songs = Song.all
  end

  def new
  end

  def create
  end

  def show
    @song = Song.find(params[:id])
  end
end
