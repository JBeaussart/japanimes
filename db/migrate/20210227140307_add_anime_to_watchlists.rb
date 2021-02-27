class AddAnimeToWatchlists < ActiveRecord::Migration[6.0]
  def change
    add_reference :watchlists, :anime, null: false, foreign_key: true
  end
end
