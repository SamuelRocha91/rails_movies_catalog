class MovieGenre < ApplicationRecord
  has_many :directors, foreign_key: 'favorite_genre_id'
end
