class Anime < ApplicationRecord
	has_many :reviews, dependent: :destroy
  has_many :watchlists
end
