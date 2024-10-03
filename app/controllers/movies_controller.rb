class MoviesController < ApplicationController
  def index
    page = params[:page] || 1 
    @movies = Movie.page(page).per(10)  
    @movie_genres = MovieGenre.all 
  end
end