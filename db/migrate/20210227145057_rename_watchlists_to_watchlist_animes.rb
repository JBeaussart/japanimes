class RenameWatchlistsToWatchlistAnimes < ActiveRecord::Migration[6.0]
  def change
  	rename_table :watchlists, :watchlist_animes
  end
end
