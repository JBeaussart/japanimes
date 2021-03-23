class AnimesController < ApplicationController
  def index
    if params[:query].present?
      @animes = Anime.where("title ILIKE ?", "%#{params[:query]}%")
    elsif params[:category].present?
      @animes = Anime.where(category: params[:category])
    elsif params[:streaming_service].present?
      @animes = Anime.where(streaming_service: params[:streaming_service])
    else
      @animes = Anime.all
    end
  end
  
  def show
    @anime = Anime.find(params[:id])
    if current_user != nil
      @watchlist = current_user.watchlist_animes.find_by(anime: @anime)
    end
    @review = Review.new
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

  private

  def anime_params
    params.require(:anime).permit(:title, :description, :parution_date, :category, :streaming_service, :rating, :photo)
  end

end
