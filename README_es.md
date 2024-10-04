# <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTWNyzRvZuphTsoQwk0FKqdTWHQEG50IIDgA&s" alt="Rails Projects Logo" width="52" height="40" /> 🎬 Cine Memory - Sitio de Gestión de Películas<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTWNyzRvZuphTsoQwk0FKqdTWHQEG50IIDgA&s" alt="Rails Projects Logo" width="52" height="40" />

## 🌐 [![Português](https://img.shields.io/badge/Português-green)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README.md) [![Español](https://img.shields.io/badge/Español-yellow)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README_es.md) [![English](https://img.shields.io/badge/English-blue)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README_en.md) [![Русский](https://img.shields.io/badge/Русский-lightgrey)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README_ru.md) [![中文](https://img.shields.io/badge/中文-red)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README_ch.md) [![العربية](https://img.shields.io/badge/العربية-orange)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README_ar.md)

![Demostración de Uso](./public/movies.gif)

![En Desarrollo](https://img.shields.io/badge/status-En%20Desarrollo-yellow)

## Estado del Proyecto

⚠️ **En desarrollo**: Este es un proyecto en etapa de desarrollo. Más funcionalidades aún están en proceso de implementación.

## Visión General

Este proyecto es un **Sistema de Gestión de Películas** desarrollado con Ruby on Rails. Permite a los usuarios gestionar películas, géneros y directores. Aplica un CRUD (Crear, Leer, Actualizar, Eliminar) de entidades y subida de imágenes de banners de las películas.

## Estructura de la Base de Datos

![Diagrama](./public/diagrama-movies.png)

## Gems Utilizadas
- Bullet (Detección de Consultas N+1)  
Durante el desarrollo, se utiliza la gem Bullet para detectar y alertar sobre ineficiencias en la carga de consultas SQL, como el problema de consultas N+1.
- Kaminari (Paginación)  
La gem Kaminari se utiliza para la paginación de registros en listados, haciendo más eficiente la navegación en grandes conjuntos de datos.
- Active Storage (Gestión de Archivos)  
La aplicación también utiliza Active Storage para subir y gestionar archivos, como banners de películas.

## Configuración del Proyecto

### Con Docker

Para ejecutar este proyecto utilizando Docker, sigue los pasos a continuación:

#### Requisitos Previos

Asegúrate de tener Docker y Docker Compose instalados en tu máquina.

- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/)

#### Configuración

1. Clona el repositorio relacionado:

```
   git clone git@github.com:SamuelRocha91/rails_movies_catalog.git
```

2. Entra en la carpeta del proyecto:

```
   cd rails_movies_catalog
```

3. Ejecuta el comando de Docker:

```
   docker-compose up
```

4. Accede al navegador en:

```
   http://0.0.0.0:3000/
```

### Sin Docker

1. Clona el repositorio:
   ```bash
   git clone git@github.com:SamuelRocha91/rails_movies_catalog.git
   ```

2. Accede al directorio del proyecto:
   ```bash
   cd rails_movies_catalog
   ```

3. Instala las dependencias:
   ```bash
   bundle install
   ```

4. Configura la base de datos:
   ```bash
   rails db:create
   rails db:migrate
   rails db:seed
   ```

5. Ejecuta la aplicación:
   ```bash
   rails server
   ```

## Funcionalidades (Planeadas)

- **Gestión de Películas**:
  - Estado de borrador (Indica si la película está en borrador o publicada);
  - Filtrar por fecha de estreno;
  - Generar validación de campos de fecha y otros;
  - Pruebas unitarias;
  - Responsividad.
