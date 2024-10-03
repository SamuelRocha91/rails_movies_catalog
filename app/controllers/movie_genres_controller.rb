class MovieGenresController < ApplicationController
  def index
    @movie_genres = MovieGenre.all
  end

  def show
    @movie_genre = MovieGenre.includes(movies: :banner_attachment).find(params[:id])
  end

  def edit
    @movie_genre = MovieGenre.find(params[:id])
  end

  def update
    @movie_genre = MovieGenre.find(params[:id])
    if @movie_genre.update(movie_genre_params)
      flash[:notice] = "Movie successfully updated!"
      redirect_to movie_genre_path(@movie.id)
    else
      flash.now[:alert] = "There was an error creating the movie"
      render :edit
    end
  end

  private

  def movie_genre_params
    params.require(:movie_genre).permit(:name)
  end
end