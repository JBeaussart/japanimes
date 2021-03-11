class WatchlistAnimesController < ApplicationController
  def create
    @anime = Anime.find(params[:anime_id])
    if current_user.nil?
      redirect_to anime_path(@anime), notice: "Vous devez vous connecter"
    else
      @watchlist_animes = WatchlistAnime.new(user_id: current_user.id, anime_id: @anime.id)
      if @watchlist_animes.save
        redirect_to anime_path(@anime), notice: "Anime ajouté de votre Watchlist"
      else
        render "animes/show"
      end
    end
  end

  def destroy
    @watchlist_animes = WatchlistAnime.find(params[:id])
    @watchlist_animes.destroy
    redirect_to anime_path(@watchlist_animes.anime), notice: "Anime supprimé de votre Watchlist"
  end
end
