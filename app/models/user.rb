class User < ApplicationRecord
	has_many :reviews, dependent: :destroy
  has_many :theories, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :watchlist_animes, dependent: :destroy
  has_many :animes, through: :watchlist_animes

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
