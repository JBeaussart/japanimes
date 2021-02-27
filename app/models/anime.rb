class Anime < ApplicationRecord
  has_many :users
  has_many :animes
end
