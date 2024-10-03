class CreateDirectors < ActiveRecord::Migration[7.1]
  def change
    create_table :directors do |t|
      t.string :name
      t.string :nationality
      t.string :birth_date
      t.references :movie_genre, null: false, foreign_key: true

      t.timestamps
    end
  end
end
