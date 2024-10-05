# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb

require "open-uri"

genres = [
  { name: "Action" },
  { name: "Adventure" },
  { name: "Animation" },
  { name: "Comedy" },
  { name: "Documentary" },
  { name: "Drama" },
  { name: "Fantasy" },
  { name: "History" },
  { name: "Horror" },
  { name: "Music" },
  { name: "Musical" },
  { name: "Mystery" },
  { name: "Romance" },
  { name: "Science Fiction" },
 
]

genres.each do |genre|
  MovieGenre.find_or_create_by(name: genre[:name])
end

puts "Gêneros de filmes inseridos com sucesso!"



action_genre = MovieGenre.find_by(name: "Action")
animation_genre = MovieGenre.find_by(name: "Animation")
drama_genre = MovieGenre.find_by(name: "Drama")
comedy_genre = MovieGenre.find_by(name: "Comedy")
sci_fi_genre = MovieGenre.find_by(name: "Science Fiction")
horror_genre = MovieGenre.find_by(name: "Horror")
fantasy_genre = MovieGenre.find_by(name: "Fantasy")
documentary_genre = MovieGenre.find_by(name: "Documentary")


directors = [
  {
    name: "Steven Spielberg",
    nationality: "American",
    birth_date: "1946-12-18",
    favorite_genre: sci_fi_genre
  },
  {
    name: "Christopher Nolan",
    nationality: "British",
    birth_date: "1970-07-30",
    favorite_genre: action_genre
  },
  {
    name: "Quentin Tarantino",
    nationality: "American",
    birth_date: "1963-03-27",
    favorite_genre: drama_genre
  },
  {
    name: "Wes Anderson",
    nationality: "American",
    birth_date: "1969-05-01",
    favorite_genre: comedy_genre
  },
  {
    name: "Alfred Hitchcock",
    nationality: "British",
    birth_date: "1899-08-13",
    favorite_genre: horror_genre
  }
]

directors.each do |director_data|
  Director.find_or_create_by(
    name: director_data[:name],
    nationality: director_data[:nationality],
    birth_date: director_data[:birth_date],
    favorite_genre: director_data[:favorite_genre]
  )
end

puts "Diretores inseridos com sucesso!"


spielberg = Director.find_by(name: "Steven Spielberg")
nolan = Director.find_by(name: "Christopher Nolan")
tarantino = Director.find_by(name: "Quentin Tarantino")
anderson = Director.find_by(name: "Wes Anderson")
hitchcock = Director.find_by(name: "Alfred Hitchcock")


movies = [
  { title: "Uma Linda Mulher", year_of_release: 1990, duration: 119, synopsis: "A love story...", country_of_origin: "USA", is_draft: false, director: spielberg, movie_genre: comedy_genre, image_path: Rails.root.join("public", "images", "umalindamulher.jpg") },
  { title: "A.I. Inteligência Artificial", year_of_release: 2001, duration: 146, synopsis: "A futuristic story...", country_of_origin: "USA", is_draft: false, director: spielberg, movie_genre: sci_fi_genre, image_path: Rails.root.join("public", "images", "aiInteligencia.jpg") },
  { title: "A Lista de Schindler", year_of_release: 1993, duration: 195, synopsis: "A man saves lives during WWII...", country_of_origin: "USA", is_draft: false, director: spielberg, movie_genre: drama_genre, image_path: Rails.root.join("public", "images", "alistadeschindler.jpg") },
  { title: "A Vida é Bela", year_of_release: 1997, duration: 116, synopsis: "A father protects his son in WWII...", country_of_origin: "Italy", is_draft: false, director: anderson, movie_genre: drama_genre, image_path: Rails.root.join("public", "images", "avidaehbela.jpg")  },
  { title: "Bad Boys", year_of_release: 1995, duration: 119, synopsis: "Two detectives fight crime...", country_of_origin: "USA", is_draft: false, director: nolan, movie_genre: action_genre, image_path: Rails.root.join("public", "images", "badBoys.jpg")  },
  { title: "Brilho Eterno de uma Mente sem Lembranças", year_of_release: 2004, duration: 108, synopsis: "A love story about memory...", country_of_origin: "USA", is_draft: false, director: tarantino, movie_genre: drama_genre, image_path:  Rails.root.join("public", "images", "brilhoeternodeumamentesemlembrancas.jpg") },
  { title: "Click", year_of_release: 2006, duration: 107, synopsis: "A man controls time with a remote...", country_of_origin: "USA", is_draft: false, director: spielberg, movie_genre: comedy_genre, image_path: Rails.root.join("public", "images", "click.jpg")}]

# Criando filmes e associando imagens
movies.each do |movie_data|
  movie = Movie.create!(
    title: movie_data[:title],
    year_of_release: movie_data[:year_of_release],
    duration: movie_data[:duration],
    synopsis: movie_data[:synopsis],
    country_of_origin: movie_data[:country_of_origin],
    is_draft: movie_data[:is_draft],
    director: movie_data[:director],
    movie_genre: movie_data[:movie_genre]
  )

  image_file = File.open(movie_data[:image_path])
  movie.banner.attach(io: image_file, filename: File.basename(image_file))
end

puts "Primeira leva de Filmes e imagens"

movies_two = [{ title: "Como Se Fosse a Primeira Vez", year_of_release: 2004, duration: 99, synopsis: "A man must make a woman fall in love with him every day...", country_of_origin: "USA", is_draft: false, director: spielberg, movie_genre: comedy_genre, image_path: Rails.root.join("public", "images", "comosefosseaprimeiravez.jpg") },
  { title: "À Espera de um Milagre", year_of_release: 1999, duration: 189, synopsis: "A prison guard discovers a miracle...", country_of_origin: "USA", is_draft: false, director: spielberg, movie_genre: drama_genre, image_path: Rails.root.join("public", "images", "aesperademilagre.jpg") },
  { title: "Coringa", year_of_release: 2019, duration: 122, synopsis: "A dark look into the origins of the Joker...", country_of_origin: "USA", is_draft: false, director: nolan, movie_genre: drama_genre, image_path:  Rails.root.join("public", "images", "coringa.jpg") },
  { title: "Divertidamente", year_of_release: 2015, duration: 95, synopsis: "An animated story about emotions...", country_of_origin: "USA", is_draft: false, director: anderson, movie_genre: animation_genre, image_path: Rails.root.join("public", "images", "DIvertidamente.jpg")  },
  { title: "Harry Potter e a Pedra Filosofal", year_of_release: 2001, duration: 152, synopsis: "A young wizard's journey begins...", country_of_origin: "UK", is_draft: false, director: spielberg, movie_genre: fantasy_genre, image_path:  Rails.root.join("public", "images", "harrypotter.jpg")  },  
  { title: "Lagoa Azul", year_of_release: 1980, duration: 104, synopsis: "Two children grow up on a deserted island...", country_of_origin: "USA", is_draft: false, director: spielberg, movie_genre: drama_genre, image_path: Rails.root.join("public", "images", "lagoaazul.jpg") },
  { title: "Lei e Ordem", year_of_release: 2000, duration: 45, synopsis: "Crime drama show...", country_of_origin: "USA", is_draft: false, director: spielberg, movie_genre: drama_genre, image_path: Rails.root.join("public", "images", "leieordem.jpg") }]

movies_two.each do |movie_data|
  movie = Movie.create!(
    title: movie_data[:title],
    year_of_release: movie_data[:year_of_release],
    duration: movie_data[:duration],
    synopsis: movie_data[:synopsis],
    country_of_origin: movie_data[:country_of_origin],
    is_draft: movie_data[:is_draft],
    director: movie_data[:director],
    movie_genre: movie_data[:movie_genre]
  )

  image_file = File.open(movie_data[:image_path])
  movie.banner.attach(io: image_file, filename: File.basename(image_file))
end
puts "Segunda leva de Filmes e imagens"

movies_three = [
  { title: "Matrix", year_of_release: 1999, duration: 136, synopsis: "A hacker discovers the reality he lives in is fake...", country_of_origin: "USA", is_draft: false, director: nolan, movie_genre: sci_fi_genre, image_path: Rails.root.join("public", "images", "matrix.jpg")  },
  { title: "O Menino do Pijama Listrado", year_of_release: 2008, duration: 94, synopsis: "A young boy befriends a boy in a concentration camp...", country_of_origin: "UK", is_draft: false, director: spielberg, movie_genre: drama_genre, image_path: Rails.root.join("public", "images", "meninodopijama.jpg") },
  { title: "Não Fale o Mal", year_of_release: 2022, duration: 97, synopsis: "A horror thriller...", country_of_origin: "USA", is_draft: false, director: hitchcock, movie_genre: horror_genre, image_path: Rails.root.join("public", "images", "nãoFaleOMal.jpg")},
  { title: "Naruto", year_of_release: 2002, duration: 23, synopsis: "An anime about a young ninja's journey...", country_of_origin: "Japan", is_draft: false, director: spielberg, movie_genre: action_genre, image_path: Rails.root.join("public", "images", "Naruto.jpg") },
  { title: "Os Fantasmas se Divertem", year_of_release: 1988, duration: 92, synopsis: "A comedy about the afterlife...", country_of_origin: "USA", is_draft: false, director: anderson, movie_genre: comedy_genre, image_path: Rails.root.join("public", "images", "osFantasmasSeDivertem.jpg")},
  { title: "A Paixão de Cristo", year_of_release: 2004, duration: 127, synopsis: "A portrayal of Jesus's crucifixion...", country_of_origin: "USA", is_draft: false, director: spielberg, movie_genre: drama_genre, image_path: Rails.root.join("public", "images", "paixaodecristo.jpg") },
  { title: "Patrulha Canina", year_of_release: 2013, duration: 12, synopsis: "An animated kids' show about rescue dogs...", country_of_origin: "Canada", is_draft: false, director: spielberg, movie_genre: animation_genre, image_path: Rails.root.join("public", "images", "patrulhacanina.jpg") },
  { title: "Planeta dos Macacos", year_of_release: 1968, duration: 112, synopsis: "Humans vs apes in a dystopian future...", country_of_origin: "USA", is_draft: false, director: nolan, movie_genre: sci_fi_genre, image_path: Rails.root.join("public", "images", "planetaDosMacacos.jpg") },
  { title: "Pinguim", year_of_release: 2020, duration: 130, synopsis: "A documentary about penguins...", country_of_origin: "Antarctica", is_draft: false, director: spielberg, movie_genre: documentary_genre, image_path: Rails.root.join("public", "images", "pinguim.jpg") },
  { title: "Um Príncipe em Nova York", year_of_release: 1988, duration: 117, synopsis: "A prince visits New York City...", country_of_origin: "USA", is_draft: false, director: spielberg, movie_genre: comedy_genre, image_path: Rails.root.join("public", "images", "principeemnovayork.jpg") },
  { title: "O Senhor dos Anéis", year_of_release: 2001, duration: 178, synopsis: "A quest to destroy a powerful ring...", country_of_origin: "New Zealand", is_draft: false, director: spielberg, movie_genre: fantasy_genre, image_path: Rails.root.join("public", "images", "senhordosaneis.jpg") },
  { title: "O Show de Truman", year_of_release: 1998, duration: 103, synopsis: "A man realizes his life is a TV show...", country_of_origin: "USA", is_draft: false, director: spielberg, movie_genre: drama_genre, image_path: Rails.root.join("public", "images", "showdetruman.jpg") },
  { title: "Titanic", year_of_release: 1997, duration: 195, synopsis: "A love story on the ill-fated Titanic...", country_of_origin: "USA", is_draft: false, director: spielberg, movie_genre: drama_genre, image_path: Rails.root.join("public", "images", "titanic.jpg") }
]

movies_three.each do |movie_data|
  movie = Movie.create!(
    title: movie_data[:title],
    year_of_release: movie_data[:year_of_release],
    duration: movie_data[:duration],
    synopsis: movie_data[:synopsis],
    country_of_origin: movie_data[:country_of_origin],
    is_draft: movie_data[:is_draft],
    director: movie_data[:director],
    movie_genre: movie_data[:movie_genre]
  )

  image_file = File.open(movie_data[:image_path])
  movie.banner.attach(io: image_file, filename: File.basename(image_file))
end

puts "Terceira leva de Filmes e imagens"
