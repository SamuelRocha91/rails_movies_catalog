class Director < ApplicationRecord
  belongs_to :favorite_genre, class_name: 'MovieGenre'
  has_many :movies
end
