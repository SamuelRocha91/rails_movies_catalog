class MovieGenresController < ApplicationController
  def index
    @movie_genres = MovieGenre.all
  end
end