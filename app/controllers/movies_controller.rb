class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    @movie_genres = MovieGenre.all 
  end
end