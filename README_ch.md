# <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTWNyzRvZuphTsoQwk0FKqdTWHQEG50IIDgA&s" alt="Rails Projects Logo" width="52" height="40" /> 🎬 Cine Memory - 电影管理网站<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTWNyzRvZuphTsoQwk0FKqdTWHQEG50IIDgA&s" alt="Rails Projects Logo" width="52" height="40" />

## 🌐 [![Português](https://img.shields.io/badge/Português-green)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README.md) [![Español](https://img.shields.io/badge/Español-yellow)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README_es.md) [![English](https://img.shields.io/badge/English-blue)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README_en.md) [![Русский](https://img.shields.io/badge/Русский-lightgrey)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README_ru.md) [![中文](https://img.shields.io/badge/中文-red)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README_ch.md) [![العربية](https://img.shields.io/badge/العربية-orange)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README_ar.md)

![使用演示](./public/movies.gif)

![开发中](https://img.shields.io/badge/status-开发中-yellow)

## 项目状态

⚠️ **开发中**：这是一个正在开发中的项目。更多功能仍在实施中。

## 概述

该项目是一个使用 Ruby on Rails 开发的 **电影管理系统**。它允许用户管理电影、类型和导演。实现了实体的 CRUD（创建、读取、更新、删除）和电影横幅图片的上传。

## 数据库结构

![图表](./public/diagrama-movies.png)

## 使用的 Gem
- Bullet（N+1 查询检测）  
在开发过程中，使用 Bullet gem 来检测和警告 SQL 查询的低效，如 N+1 查询问题。
- Kaminari（分页）  
使用 Kaminari gem 来对列表中的记录进行分页，使大数据集的导航更加高效。
- Active Storage（文件管理）  
该应用程序还使用 Active Storage 来上传和管理文件，如电影横幅。

## 项目设置

### 使用 Docker

要使用 Docker 运行此项目，请按照以下步骤操作：

#### 先决条件

确保您的计算机上已安装 Docker 和 Docker Compose。

- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/)

#### 配置

1. 克隆相关的仓库：

```
   git clone git@github.com:SamuelRocha91/rails_movies_catalog.git
```

2. 进入项目文件夹：

```
   cd rails_movies_catalog
```

3. 运行 Docker 命令：

```
   docker-compose up
```

4. 在浏览器中访问：

```
   http://0.0.0.0:3000/
```

### 不使用 Docker

1. 克隆仓库：
   ```bash
   git clone git@github.com:SamuelRocha91/rails_movies_catalog.git
   ```

2. 进入项目目录：
   ```bash
   cd rails_movies_catalog
   ```

3. 安装依赖：
   ```bash
   bundle install
   ```

4. 配置数据库：
   ```bash
   rails db:create
   rails db:migrate
   rails db:seed
   ```

5. 运行应用程序：
   ```bash
   rails server
   ```

## 功能（计划中）

- **电影管理**：
  - 草稿状态（指示电影是草稿还是已发布）；
  - 按发布日期筛选；
  - 生成日期字段和其他的验证；
  - 单元测试；
  - 响应式设计。
