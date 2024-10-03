class Director < ApplicationRecord
  belongs_to :favorite_genre, class_name: 'MovieGenre'
end
