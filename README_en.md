# <img src="https://cdn-icons-png.flaticon.com/128/82/82667.png" alt="Rails Projects Logo" width="40" height="30" /> 🎬 Cine Memory - Movie Management Site<img src="https://cdn-icons-png.flaticon.com/128/82/82667.png" alt="Rails Projects Logo" width="40" height="30" /> 

## 🌐 [![Português](https://img.shields.io/badge/Português-green)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README.md) [![Español](https://img.shields.io/badge/Español-yellow)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README_es.md) [![English](https://img.shields.io/badge/English-blue)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README_en.md) [![Русский](https://img.shields.io/badge/Русский-lightgrey)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README_ru.md) [![中文](https://img.shields.io/badge/中文-red)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README_ch.md) [![العربية](https://img.shields.io/badge/العربية-orange)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README_ar.md)

![Usage Demonstration](./public/amostragem.gif)

![In Development](https://img.shields.io/badge/status-In%20Development-yellow)

<details>

<summary> <h2>Overview</h2> </summary>

This project is a **Movie Management System** developed with Ruby on Rails. It allows users to manage movies, genres, and directors. It implements a CRUD (Create, Read, Update, Delete) for entities and allows for the upload of movie banner images.

</details>

<details>

<summary> <h2>Database Structure</h2> </summary>

![Diagram](./public/diagrama-movies.png)

</details>

<details>

<summary> <h2>Used Gems</h2> </summary>

- Bullet (N+1 Query Detection)  
During development, the Bullet gem is used to detect and alert about inefficiencies in loading SQL queries, such as the N+1 query problem.

- Kaminari (Pagination)  
The Kaminari gem is used for pagination of records in listings, making navigation through large datasets more efficient.

- Active Storage (File Management)  
The application also uses Active Storage for uploading and managing files, such as movie banners.

</details>

<details>

<summary> <h2>Project Setup</h2> </summary>

  <details>

<summary> <h2> With Docker </h2> </summary>

To run this project using Docker, follow the steps below:

#### Prerequisites

Make sure you have Docker and Docker Compose installed on your machine.

- [Docker](https://docs.docker.com/get-docker/)  
- [Docker Compose](https://docs.docker.com/compose/install/)

#### Configuration

1. Clone the related repository:

```
   git clone git@github.com:SamuelRocha91/rails_movies_catalog.git
   ```

2. Navigate to the project folder:

```
   cd rails_movies_catalog
   ```

3. Run the docker command:

```
   docker-compose up
   ```

4. Access the browser at:

```
   http://0.0.0.0:3000/
   ```

  </details>
  
  <details>

<summary>  <h2> Without Docker </h2> </summary>

1. Clone the repository:
   ```bash
   git clone git@github.com:SamuelRocha91/rails_movies_catalog.git
   ```

2. Navigate to the project directory:
   ```bash
   cd rails_movies_catalog
   ```

3. Install the dependencies:
   ```bash
   bundle install
   ```

4. Configure the database:
   ```bash
   rails db:create
   rails db:migrate
   rails db:seed
   ```

5. Run the application:
   ```bash
   rails server
   ```
   </details>

</details>

<details>

<summary> <h2> Features (Planned) </h2> </summary>

- **Movie Management**: 
  - Unit tests
  - Responsiveness

</details>
<details>
  <summary><h2>🔗 Outros Repositórios</h2></summary>

  - ⚡ [Odin Projects](https://github.com/SamuelRocha91/ruby_exercises/blob/main/README_en.md)

</details>