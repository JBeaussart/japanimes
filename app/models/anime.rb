class Anime < ApplicationRecord
	has_many :reviews, dependent: :destroy
  has_many :watchlist_animes, dependent: :destroy
  has_one_attached :photo

  def blank_stars
    5 - rating.to_i
  end
end
