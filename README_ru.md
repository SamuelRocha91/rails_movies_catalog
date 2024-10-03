# <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTWNyzRvZuphTsoQwk0FKqdTWHQEG50IIDgA&s" alt="Rails Projects Logo" width="52" height="40" /> 🎬 Cine Memory - Система Управления Фильмами <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTWNyzRvZuphTsoQwk0FKqdTWHQEG50IIDgA&s" alt="Rails Projects Logo" width="52" height="40" /> 

## 🌐 [![Português](https://img.shields.io/badge/Português-green)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README.md) [![Español](https://img.shields.io/badge/Español-yellow)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README_es.md) [![English](https://img.shields.io/badge/English-blue)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README_en.md) [![Русский](https://img.shields.io/badge/Русский-lightgrey)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README_ru.md) [![中文](https://img.shields.io/badge/中文-red)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README_ch.md) [![العربية](https://img.shields.io/badge/العربية-orange)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README_ar.md)

![В Разработке](https://img.shields.io/badge/status-%D0%92%20%D0%A0%D0%B0%D0%B7%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D0%BA%D0%B5-yellow)

## Обзор

Этот проект является **Системой Управления Фильмами**, разработанной с использованием Ruby on Rails. Он позволяет пользователям управлять фильмами, жанрами и режиссерами. В настоящее время система находится в **активной разработке**, и основное внимание уделяется созданию полного решения для управления фильмами с функциями CRUD (Создание, Чтение, Обновление, Удаление) и загрузкой изображений баннеров фильмов.

## Статус Проекта

⚠️ **В разработке**: Это проект на ранней стадии, и множество функций еще находятся в процессе реализации. Вносятся изменения и улучшения, поэтому система еще не завершена.

## Структура Базы Данных

![Диаграмма](./public/diagrama-movies.png)

## Используемые Gem-ы
- **Bullet (Обнаружение N+1 Запросов)**: В процессе разработки используется gem Bullet для обнаружения и уведомления об неэффективностях в загрузке SQL-запросов, таких как проблемы с N+1 запросами.
  
- **Kaminari (Пагинация)**: Gem Kaminari используется для пагинации записей в списках, что делает навигацию по большим наборам данных более эффективной.

- **Active Storage (Управление Файлами)**: Приложение также использует Active Storage для загрузки и управления файлами, такими как баннеры фильмов.

## Запланированные Функции

- **Управление фильмами**: 
  - Название
  - Год выпуска
  - Длительность
  - Аннотация
  - Страна происхождения
  - Загрузка баннеров
  - Статус черновика (Указывает, находится ли фильм в черновике или опубликован)

- **Управление жанрами фильмов**: Ассоциирование фильмов с соответствующими жанрами.

- **Управление режиссерами**: 
  - Имя
  - Национальность
  - Дата рождения
  - Любимый жанр

## Установка

1. Клонируйте репозиторий:
   ```bash
   git clone <repository_url>
   ```

2. Перейдите в директорию проекта:
   ```bash
   cd sistema-gestao-filmes
   ```

3. Установите зависимости:
   ```bash
   bundle install
   ```

4. Настройте базу данных:
   ```bash
   rails db:create
   rails db:migrate
   ```

5. Запустите приложение:
   ```bash
   rails server
   ```
