class WatchlistAnimesController < ApplicationController
  def create
    @anime = Anime.find(params[:anime_id])
    @watchlist_animes = WatchlistAnime.new(user_id: current_user.id, anime_id: @anime.id)
    if @watchlist_animes.save!
      redirect_to user_path(current_user)
    else
      render "animes/show"
    end
  end

  def destroy
    @watchlist_animes = WatchlistAnime.find(params[:id])
    @watchlist_animes.destroy
    redirect_to user_path(current_user)
  end
end
