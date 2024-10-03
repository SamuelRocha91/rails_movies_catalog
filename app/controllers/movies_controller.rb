class MoviesController < ApplicationController
  def index
    page = params[:page] || 1
    @movie_genres = MovieGenre.all
    @movies = Movie.all.includes(banner_attachment: :blob) 
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

  def new
    @movie = Movie.new
    @movie_genres = MovieGenre.all 
    @directors = Director.all 
  end

  def create
    @movie = Movie.new(movie_params)
    if @movie.save
      flash[:notice] = "Movie successfully created!"
      redirect_to movie_path(@movie.id)
    else
      flash.now[:alert] = "There was an error creating the movie."
      @movie_genres = MovieGenre.all
      render :new
    end
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def edit
    @movie = Movie.find(params[:id])
    @movie_genres = MovieGenre.all 
    @directors = Director.all     
  end

  def update
    @movie = Movie.find(params[:id])
    if @movie.update(movie_params)
      flash[:notice] = "Movie successfully updated!"
      redirect_to movie_path(@movie.id)
    else
      flash.now[:alert] = "There was an error creating the movie."
      @movie_genres = MovieGenre.all
      @directors = Director.all     
      render :edit
    end
  end

  def destroy
      @movie = Movie.find(params[:id])
    if @movie.destroy
      flash[:notice] = "Movie successfully deleted"
      redirect_to root_path
    else
      flash.now[:alert] = "There was an error to delete this movie."
      render :show
    end
  end

  private

  def movie_params
    params.require(:movie)
    .permit(
      :title, 
      :banner, 
      :year_of_release,
      :duration,
      :movie_genre_id,
      :director_id,
      :country_of_origin, 
      :synopsis,
      :is_draft
      )
  end
end