class Movie < ApplicationRecord
  belongs_to :director
  belongs_to :movie_genre
end
