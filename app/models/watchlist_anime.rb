class WatchlistAnime < ApplicationRecord
  belongs_to :user
  belongs_to :anime

  validates :anime, uniqueness: { scope: :user }
end
