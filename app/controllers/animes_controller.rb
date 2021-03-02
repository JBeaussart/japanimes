class AnimesController < ApplicationController
  def index
    @animes = Anime.all
  end

  def show
    @animes = Anime.find(params[:id])
  end
end
