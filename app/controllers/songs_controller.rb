class SongsController < ApplicationController
  def index
    @songs= Song.all
  end

  def new
  end

  def create
  end

  def show
    @song = Song.find(params[:id])
  end
end
