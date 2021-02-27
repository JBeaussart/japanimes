class Anime < ApplicationRecord
	has_many :reviews, dependent: :destroy
end
