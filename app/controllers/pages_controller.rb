class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @animes = Anime.all

    unfiltered_categories = @animes.map { |anime| anime.category } 
    @categories = unfiltered_categories.uniq

    unfiltered_streaming_services = @animes.map { |anime| anime.streaming_service } 
    @streaming_services = unfiltered_streaming_services.uniq
  end
end
