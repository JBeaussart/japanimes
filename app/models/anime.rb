class Anime < ApplicationRecord
	has_many :reviews, dependent: :destroy
  has_many :watchlist_animes, dependent: :destroy
end
