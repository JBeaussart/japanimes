class WatchlistAnimesController < ApplicationController

  def index
    @watchlist_animes = WatchlistAnime.all
  end
  
  def create
    @anime = Anime.find(params[:anime_id])
    if current_user.nil?
      redirect_to anime_path(@anime), notice: "Vous devez vous connecter"
    else
      @watchlist_animes = WatchlistAnime.new(user_id: current_user.id, anime_id: @anime.id)
      if @watchlist_animes.save
        redirect_to animes_path, notice: "Anime ajouté de votre Watchlist"
      else
        redirect_to animes_path
      end
    end
  end

  def destroy
    @anime = Anime.find(params[:id])
    @watchlist_anime = WatchlistAnime.where(anime_id: @anime.id, user_id: current_user.id).first
    @watchlist_anime.destroy
    redirect_to animes_path, notice: "Anime supprimé de votre Watchlist"
  end
end
