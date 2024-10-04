class DirectorsController < ApplicationController
  before_action :validate_birth_date, only: [:create, :update]

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
    @director = Director.includes(:favorite_genre, movies: {banner_attachment: :blob}).find(params[:id])
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

  def validate_birth_date
    birth_date = params[:director][:birth_date]
    p birth_date
    regex = /^\d{4}\/\d{2}\/\d{2}$/
    match_data = birth_date.match(regex)
    if !match_data
       flash[:alert] = "Date format is invalid. Please use yyyy/mm/dd."
       redirect_back(fallback_location: root_path)
    end
  end

end