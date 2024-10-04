# <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTWNyzRvZuphTsoQwk0FKqdTWHQEG50IIDgA&s" alt="Rails Projects Logo" width="52" height="40" /> 🎬 Cine Memory - Movie Management Site<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTWNyzRvZuphTsoQwk0FKqdTWHQEG50IIDgA&s" alt="Rails Projects Logo" width="52" height="40" />

## 🌐 [![Português](https://img.shields.io/badge/Português-green)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README.md) [![Español](https://img.shields.io/badge/Español-yellow)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README_es.md) [![English](https://img.shields.io/badge/English-blue)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README_en.md) [![Русский](https://img.shields.io/badge/Русский-lightgrey)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README_ru.md) [![中文](https://img.shields.io/badge/中文-red)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README_ch.md) [![العربية](https://img.shields.io/badge/العربية-orange)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README_ar.md)

![Usage Demonstration](./public/movies.gif)

![In Development](https://img.shields.io/badge/status-In%20Development-yellow)

## Project Status

⚠️ **In development**: This is a project in the development stage. More features are still in the process of being implemented.

## Overview

This project is a **Movie Management System** developed with Ruby on Rails. It allows users to manage movies, genres, and directors. It implements a CRUD (Create, Read, Update, Delete) for entities and uploads images of movie banners.

## Database Structure

![Diagram](./public/diagrama-movies.png)

## Gems Used
- Bullet (N+1 Query Detection)  
During development, the Bullet gem is used to detect and alert about inefficiencies in loading SQL queries, such as the N+1 query problem.
- Kaminari (Pagination)  
The Kaminari gem is used for paginating records in listings, making navigation in large datasets more efficient.
- Active Storage (File Management)  
The application also utilizes Active Storage to upload and manage files, such as movie banners.

## Project Setup

### With Docker

To run this project using Docker, follow the steps below:

#### Prerequisites

Make sure you have Docker and Docker Compose installed on your machine.

- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/)

#### Setup

1. Clone the related repository:

```
   git clone git@github.com:SamuelRocha91/rails_movies_catalog.git
```

2. Navigate to the project folder:

```
   cd rails_movies_catalog
```

3. Run the Docker command:

```
   docker-compose up
```

4. Access the browser at:

```
   http://0.0.0.0:3000/
```

### Without Docker

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

## Features (Planned)

- **Movie Management**:
  - Draft status (Indicates whether the movie is in draft or published);
  - Filter by release date;
  - Generate validation for date fields and others;
  - Unit tests;
  - Responsiveness.
