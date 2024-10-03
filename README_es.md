# <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTWNyzRvZuphTsoQwk0FKqdTWHQEG50IIDgA&s" alt="Rails Projects Logo" width="52" height="40" /> 🎬 Cine Memory - Sitio de Gestión de Películas <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTWNyzRvZuphTsoQwk0FKqdTWHQEG50IIDgA&s" alt="Rails Projects Logo" width="52" height="40" /> 

## 🌐 [![Português](https://img.shields.io/badge/Português-green)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README.md) [![Español](https://img.shields.io/badge/Español-yellow)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README_es.md) [![English](https://img.shields.io/badge/English-blue)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README_en.md) [![Русский](https://img.shields.io/badge/Русский-lightgrey)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README_ru.md) [![中文](https://img.shields.io/badge/中文-red)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README_ch.md) [![العربية](https://img.shields.io/badge/العربية-orange)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README_ar.md)

![En Desarrollo](https://img.shields.io/badge/status-En%20Desarrollo-yellow)

## Visión General

Este proyecto es un **Sistema de Gestión de Películas** desarrollado con Ruby on Rails. Permite a los usuarios gestionar películas, géneros y directores. Actualmente, el sistema está en **desarrollo activo**, y el enfoque principal es ofrecer una solución completa para la gestión de películas con funcionalidades de CRUD (Crear, Leer, Actualizar, Eliminar) y la capacidad de subir imágenes de banners de películas.

## Estado del Proyecto

⚠️ **En desarrollo**: Este es un proyecto en sus primeras etapas, y varias funciones aún están en proceso de implementación. Se están realizando cambios y mejoras, por lo que el sistema aún no está completo.

## Estructura de la Base de Datos

![Diagrama](./public/diagrama-movies.png)

## Gems Utilizadas
- **Bullet (Detección de Consultas N+1)**: Durante el desarrollo, se utiliza la gem Bullet para detectar y alertar sobre ineficiencias en la carga de consultas SQL, como el problema de consultas N+1.
  
- **Kaminari (Paginación)**: La gem Kaminari se utiliza para la paginación de registros en listados, haciendo que la navegación a través de grandes conjuntos de datos sea más eficiente.

- **Active Storage (Gestión de Archivos)**: La aplicación también utiliza Active Storage para subir y gestionar archivos, como banners de películas.

## Funcionalidades (Planeadas)

- **Gestión de películas**: 
  - Título
  - Año de lanzamiento
  - Duración
  - Sinopsis
  - País de origen
  - Subida de banners
  - Estado de borrador (Indica si la película está en borrador o publicada)

- **Gestión de géneros de películas**: Asociar películas con sus respectivos géneros.

- **Gestión de directores**: 
  - Nombre
  - Nacionalidad
  - Fecha de nacimiento
  - Género favorito

## Instalación

1. Clona el repositorio:
   ```bash
   git clone <repository_url>
   ```

2. Accede al directorio del proyecto:
   ```bash
   cd sistema-gestion-peliculas
   ```

3. Instala las dependencias:
   ```bash
   bundle install
   ```

4. Configura la base de datos:
   ```bash
   rails db:create
   rails db:migrate
   ```

5. Ejecuta la aplicación:
   ```bash
   rails server
   ```

