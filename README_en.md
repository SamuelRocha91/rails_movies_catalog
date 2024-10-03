# <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTWNyzRvZuphTsoQwk0FKqdTWHQEG50IIDgA&s" alt="Rails Projects Logo" width="52" height="40" /> 🎬 Cine Memory - Movie Management Site <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTWNyzRvZuphTsoQwk0FKqdTWHQEG50IIDgA&s" alt="Rails Projects Logo" width="52" height="40" /> 

## 🌐 [![Português](https://img.shields.io/badge/Português-green)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README.md) [![Español](https://img.shields.io/badge/Español-yellow)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README_es.md) [![English](https://img.shields.io/badge/English-blue)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README_en.md) [![Русский](https://img.shields.io/badge/Русский-lightgrey)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README_ru.md) [![中文](https://img.shields.io/badge/中文-red)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README_ch.md) [![العربية](https://img.shields.io/badge/العربية-orange)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README_ar.md)

![In Development](https://img.shields.io/badge/status-In%20Development-yellow)

## Overview

This project is a **Movie Management System** developed with Ruby on Rails. It allows users to manage movies, genres, and directors. Currently, the system is in **active development**, with the main focus on providing a complete solution for movie management with CRUD (Create, Read, Update, Delete) functionalities and the ability to upload movie banner images.

## Project Status

⚠️ **In development**: This is an early-stage project, and various features are still in the process of implementation. Changes and improvements are being made, so the system is not yet complete.

## Database Structure

![Diagram](./public/diagrama-movies.png)

## Gems Used
- **Bullet (N+1 Query Detection)**: During development, the Bullet gem is used to detect and alert about inefficiencies in loading SQL queries, such as the N+1 query problem.
  
- **Kaminari (Pagination)**: The Kaminari gem is used for paginating records in listings, making navigation through large datasets more efficient.

- **Active Storage (File Management)**: The application also uses Active Storage for uploading and managing files, such as movie banners.

## Planned Features

- **Movie Management**: 
  - Title
  - Year of Release
  - Duration
  - Synopsis
  - Country of Origin
  - Banner Upload
  - Draft Status (Indicates whether the movie is in draft or published)

- **Movie Genre Management**: Associate movies with their respective genres.

- **Director Management**: 
  - Name
  - Nationality
  - Birth Date
  - Favorite Genre

## Installation

1. Clone the repository:
   ```bash
   git clone <repository_url>
   ```

2. Navigate to the project directory:
   ```bash
   cd movie-management-system
   ```

3. Install the dependencies:
   ```bash
   bundle install
   ```

4. Set up the database:
   ```bash
   rails db:create
   rails db:migrate
   ```

5. Run the application:
   ```bash
   rails server
   ```
