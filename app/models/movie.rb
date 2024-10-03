class Movie < ApplicationRecord
  belongs_to :director
  belongs_to :movie_genre
  has_one_attached :banner
end
