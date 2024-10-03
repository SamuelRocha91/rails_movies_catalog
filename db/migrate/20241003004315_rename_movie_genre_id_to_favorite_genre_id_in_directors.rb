class RenameMovieGenreIdToFavoriteGenreIdInDirectors < ActiveRecord::Migration[7.1]
  def change
    rename_column :directors, :movie_genre_id, :favorite_genre_id
  end
end
