class CreateTheories < ActiveRecord::Migration[6.0]
  def change
    create_table :theories do |t|
      t.text :content
      t.references :user, null: false, foreign_key: true
      t.references :anime, null: false, foreign_key: true

      t.timestamps
    end
  end
end
