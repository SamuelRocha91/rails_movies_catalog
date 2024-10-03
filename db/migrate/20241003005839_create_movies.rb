class CreateMovies < ActiveRecord::Migration[7.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :year_of_release
      t.integer :duration
      t.text :synopsis
      t.string :country_of_origin
      t.boolean :is_draft
      t.references :director, null: false, foreign_key: true
      t.references :movie_genre, null: false, foreign_key: true

      t.timestamps
    end
  end
end
