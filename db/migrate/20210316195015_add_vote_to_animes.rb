class AddVoteToAnimes < ActiveRecord::Migration[6.0]
  def change
    add_column :animes, :vote, :integer
  end
end
