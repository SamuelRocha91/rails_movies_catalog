# <img src="https://cdn-icons-png.flaticon.com/128/82/82667.png" alt="Rails Projects Logo" width="40" height="30" /> 🎬 Cine Memory - Система Управления Фильмами<img src="https://cdn-icons-png.flaticon.com/128/82/82667.png" alt="Rails Projects Logo" width="40" height="30" /> 

## 🌐 [![Português](https://img.shields.io/badge/Português-green)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README.md) [![Español](https://img.shields.io/badge/Español-yellow)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README_es.md) [![English](https://img.shields.io/badge/English-blue)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README_en.md) [![Русский](https://img.shields.io/badge/Русский-lightgrey)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README_ru.md) [![中文](https://img.shields.io/badge/中文-red)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README_ch.md) [![العربية](https://img.shields.io/badge/العربية-orange)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README_ar.md)

![Демонстрация использования](./public/amostragem.gif)

![В разработке](https://img.shields.io/badge/status-В%20разработке-yellow)

<details>

<summary> <h2>Обзор</h2> </summary>

Этот проект представляет собой **Систему Управления Фильмами**, разработанную с помощью Ruby on Rails. Он позволяет пользователям управлять фильмами, жанрами и режиссерами. Реализует CRUD (Создание, Чтение, Обновление, Удаление) для сущностей и позволяет загружать изображения баннеров фильмов.

</details>

<details>

<summary> <h2>Структура базы данных</h2> </summary>

![Диаграмма](./public/diagrama-movies.png)

</details>

<details>

<summary> <h2>Используемые библиотеки</h2> </summary>

- Bullet (Обнаружение N+1 Запросов)  
Во время разработки библиотека Bullet используется для обнаружения и уведомления об неэффективностях при загрузке SQL-запросов, таких как проблемы с N+1 запросами.

- Kaminari (Пагинация)  
Библиотека Kaminari используется для пагинации записей в списках, что делает навигацию по большим наборам данных более эффективной.

- Active Storage (Управление файлами)  
Приложение также использует Active Storage для загрузки и управления файлами, такими как баннеры фильмов.

</details>

<details>

<summary> <h2>Настройка проекта</h2> </summary>

  <details>

<summary> <h2>С Docker</h2> </summary>

Чтобы запустить этот проект с использованием Docker, выполните следующие шаги:

#### Предварительные требования

Убедитесь, что у вас установлены Docker и Docker Compose на вашем компьютере.

- [Docker](https://docs.docker.com/get-docker/)  
- [Docker Compose](https://docs.docker.com/compose/install/)

#### Настройка

1. Клонируйте соответствующий репозиторий:

```
   git clone git@github.com:SamuelRocha91/rails_movies_catalog.git
   ```

2. Перейдите в папку проекта:

```
   cd rails_movies_catalog
   ```

3. Запустите команду Docker:

```
   docker-compose up
   ```

4. Откройте браузер по адресу:

```
   http://0.0.0.0:3000/
   ```

  </details>
  
  <details>

<summary>  <h2>Без Docker</h2> </summary>

1. Клонируйте репозиторий:
   ```bash
   git clone git@github.com:SamuelRocha91/rails_movies_catalog.git
   ```

2. Перейдите в директорию проекта:
   ```bash
   cd rails_movies_catalog
   ```

3. Установите зависимости:
   ```bash
   bundle install
   ```

4. Настройте базу данных:
   ```bash
   rails db:create
   rails db:migrate
   rails db:seed
   ```

5. Запустите приложение:
   ```bash
   rails server
   ```
   </details>

</details>

<details>

<summary> <h2>Функциональности (планируемые)</h2> </summary>

- **Управление фильмами**: 
  - Модульные тесты
  - Адаптивность

</details>
<details>
  <summary><h2>🔗 Outros Repositórios</h2></summary>

  - ⚡ [Odin Projects](https://github.com/SamuelRocha91/ruby_exercises/blob/main/README_ru.md)

</details>