class MoviesController < ApplicationController
  def index
    page = params[:page] || 1
    @movie_genres = MovieGenre.all 
    @movies = Movie.all
    @movies = @movies
      .where(
        movie_genre_id: params[:category_id]
      ) if params[:category_id].present?
    @movies = @movies
      .where(
        'title LIKE ?', "%#{params[:movie_name]}%"
      )  if params[:movie_name].present?
    @movies = @movies.page(page).per(10)  
  end
end