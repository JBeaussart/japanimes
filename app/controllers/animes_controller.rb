class AnimesController < ApplicationController
  def index
    @animes = Anime.all
  end

  def show
    @anime = Anime.find(params[:id])
  end

  def new
    @anime = Anime.new
  end

  def create
    @anime = Anime.new(anime_params)
    @anime.user = current_user
    if @anime.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  def anime_params
    params.require(:anime).permit(:title, :description, :parution_date, :category, :streaming_service, :rating)
  end
end
