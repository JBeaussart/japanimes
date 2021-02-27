class Anime < ApplicationRecord
  has_many :users, dependent: :destroy
  has_many :animes, dependent: :destroy
end
