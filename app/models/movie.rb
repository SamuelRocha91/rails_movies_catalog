class Movie < ApplicationRecord
  belongs_to :director, optional: false
  belongs_to :movie_genre
  has_one_attached :banner
end
