class CreateAnimes < ActiveRecord::Migration[6.0]
  def change
    create_table :animes do |t|
      t.string :title
      t.text :description
      t.date :parution_date
      t.string :category
      t.string :streaming_service
      t.integer :rating

      t.timestamps
    end
  end
end
