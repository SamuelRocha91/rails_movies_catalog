# <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTWNyzRvZuphTsoQwk0FKqdTWHQEG50IIDgA&s" alt="Rails Projects Logo" width="52" height="40" /> 🎬 Cine Memory - 电影管理系统 <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTWNyzRvZuphTsoQwk0FKqdTWHQEG50IIDgA&s" alt="Rails Projects Logo" width="52" height="40" /> 

## 🌐 [![Português](https://img.shields.io/badge/Português-green)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README.md) [![Español](https://img.shields.io/badge/Español-yellow)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README_es.md) [![English](https://img.shields.io/badge/English-blue)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README_en.md) [![Русский](https://img.shields.io/badge/Русский-lightgrey)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README_ru.md) [![中文](https://img.shields.io/badge/中文-red)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README_ch.md) [![العربية](https://img.shields.io/badge/العربية-orange)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README_ar.md)

![开发中](https://img.shields.io/badge/status-%E5%BC%80%E5%8F%91%E4%B8%AD-yellow)

## 概述

该项目是一个使用 Ruby on Rails 开发的 **电影管理系统**。它允许用户管理电影、类型和导演。目前，该系统正处于 **积极开发** 中，主要目标是提供一个完整的电影管理解决方案，具备 CRUD（创建、读取、更新、删除）功能和电影横幅图像的上传功能。

## 项目状态

⚠️ **开发中**：这是一个早期阶段的项目，许多功能仍在实施中。正在进行更改和改进，因此系统尚未完成。

## 数据库结构

![图示](./public/diagrama-movies.png)

## 使用的 Gem
- **Bullet（N+1 查询检测）**：在开发过程中，使用 Bullet gem 来检测和提醒 SQL 查询加载中的低效情况，例如 N+1 查询问题。

- **Kaminari（分页）**：使用 Kaminari gem 对记录进行分页，使在大型数据集中的导航更加高效。

- **Active Storage（文件管理）**：该应用程序还使用 Active Storage 来上传和管理文件，如电影横幅。

## 计划功能

- **电影管理**： 
  - 标题
  - 发布年份
  - 时长
  - 简介
  - 原产国
  - 上传横幅
  - 草稿状态（指示电影是处于草稿状态还是已发布）

- **电影类型管理**：将电影与其相应的类型关联。

- **导演管理**： 
  - 姓名
  - 国籍
  - 出生日期
  - 喜爱的类型

## 安装

1. 克隆代码库：
   ```bash
   git clone <repository_url>
   ```

2. 进入项目目录：
   ```bash
   cd sistema-gestao-filmes
   ```

3. 安装依赖项：
   ```bash
   bundle install
   ```

4. 配置数据库：
   ```bash
   rails db:create
   rails db:migrate
   ```

5. 运行应用程序：
   ```bash
   rails server
   ```
