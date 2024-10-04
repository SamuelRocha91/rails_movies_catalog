# <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTWNyzRvZuphTsoQwk0FKqdTWHQEG50IIDgA&s" alt="Rails Projects Logo" width="52" height="40" /> 🎬 Cine Memory - Сайт Управления Фильмами<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTWNyzRvZuphTsoQwk0FKqdTWHQEG50IIDgA&s" alt="Rails Projects Logo" width="52" height="40" />

## 🌐 [![Português](https://img.shields.io/badge/Português-green)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README.md) [![Español](https://img.shields.io/badge/Español-yellow)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README_es.md) [![English](https://img.shields.io/badge/English-blue)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README_en.md) [![Русский](https://img.shields.io/badge/Русский-lightgrey)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README_ru.md) [![中文](https://img.shields.io/badge/中文-red)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README_ch.md) [![العربية](https://img.shields.io/badge/العربية-orange)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README_ar.md)

![Демонстрация использования](./public/movies.gif)

![В разработке](https://img.shields.io/badge/status-В%20разработке-yellow)

## Статус Проекта

⚠️ **В разработке**: Это проект на стадии разработки. Больше функций все еще находятся в процессе реализации.

## Обзор

Этот проект представляет собой **Систему Управления Фильмами**, разработанную с использованием Ruby on Rails. Он позволяет пользователям управлять фильмами, жанрами и режиссерами. Реализует CRUD (Создать, Читать, Обновить, Удалить) для сущностей и загрузку изображений баннеров фильмов.

## Структура Базы Данных

![Диаграмма](./public/diagrama-movies.png)

## Используемые Гемы
- Bullet (Обнаружение Запросов N+1)  
Во время разработки используется гем Bullet для обнаружения и предупреждения о неэффективности загрузки SQL-запросов, таких как проблема запросов N+1.
- Kaminari (Пагинация)  
Гем Kaminari используется для пагинации записей в списках, что делает навигацию по большим наборам данных более эффективной.
- Active Storage (Управление Файлами)  
Приложение также использует Active Storage для загрузки и управления файлами, такими как баннеры фильмов.

## Настройка Проекта

### С Docker

Чтобы запустить этот проект с использованием Docker, выполните следующие шаги:

#### Предварительные требования

Убедитесь, что Docker и Docker Compose установлены на вашем компьютере.

- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/)

#### Настройка

1. Клонируйте связанный репозиторий:

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

### Без Docker

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

## Функциональности (Планируемые)

- **Управление Фильмами**:
  - Черновик (Указывает, находится ли фильм в черновике или опубликован);
  - Фильтрация по дате выхода;
  - Генерация валидации полей даты и других;
  - Модульные тесты;
  - Адаптивность.

