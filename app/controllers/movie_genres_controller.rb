class MovieGenresController < ApplicationController
  def index
    @movie_genres = MovieGenre.all
  end

  def show
    @movie_genre = MovieGenre.includes(movies: :banner_attachment).find(params[:id])
  end
end