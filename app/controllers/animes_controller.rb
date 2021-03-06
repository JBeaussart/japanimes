class AnimesController < ApplicationController
  def index
    @animes = Anime.all
  end

  def show
    @anime = Anime.find(params[:id])
    @watchlist = current_user.watchlist_animes.find_by(anime: @anime)
    # on aurait pu remplacer .find_by avec .where.first
  end

  def new
    @anime = Anime.new
  end

  def create
    @anime = Anime.new(anime_params)
    if @anime.save
      redirect_to animes_path(current_user)
    else
      render :new
    end
  end

  def anime_params
    params.require(:anime).permit(:title, :description, :parution_date, :category, :streaming_service, :rating)
  end
end
