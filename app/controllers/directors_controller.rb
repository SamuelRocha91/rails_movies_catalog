class DirectorsController < ApplicationController
  def index
    @directors = Director.all
  end

  def new
    @director = Director.new
    @movie_genres = MovieGenre.all
  end

  def create
     @director = Director.new(director_params)
    if @director.save
      flash[:notice] = "Director successfully created!"
      redirect_to director_path(@director.id)
    else
      flash.now[:alert] = "There was an error creating the director."
      render :new
    end
  end

  def show
    @director = Director.includes(:favorite_genre).find(params[:id])
  end

  def edit
    @director = Director.find(params[:id])
    @movie_genres = MovieGenre.all
  end

  def update
    @director = Director.find(params[:id])
    if @director.update(director_params)
      flash[:notice] = "Director data successfully updated!"
      redirect_to director_path(@director.id)
    else
      flash.now[:alert] = "There was an error updating the movie"
      render :edit
    end
  end
  private

  def director_params
    params.require(:director).permit(:name, :nationality, :birth_date, :favorite_genre_id)
  end

end