# <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTWNyzRvZuphTsoQwk0FKqdTWHQEG50IIDgA&s" alt="Rails Projects Logo" width="52" height="40" /> 🎬 Cine Memory - Site de de Gerenciamento de Filmes<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTWNyzRvZuphTsoQwk0FKqdTWHQEG50IIDgA&s" alt="Rails Projects Logo" width="52" height="40" /> 



## 🌐 [![Português](https://img.shields.io/badge/Português-green)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README.md) [![Español](https://img.shields.io/badge/Español-yellow)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README_es.md) [![English](https://img.shields.io/badge/English-blue)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README_en.md) [![Русский](https://img.shields.io/badge/Русский-lightgrey)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README_ru.md) [![中文](https://img.shields.io/badge/中文-red)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README_ch.md) [![العربية](https://img.shields.io/badge/العربية-orange)](https://github.com/SamuelRocha91/rails_movies_catalog/blob/main/README_ar.md)


![Demonstração de uso](./public/movies.gif)

![Em Desenvolvimento](https://img.shields.io/badge/status-Em%20Desenvolvimento-yellow)

## Status do Projeto

⚠️ **Em desenvolvimento**: Este é um projeto em estágio de desenvolvimento. Mais funcionalidades ainda estão em processo de implementação. 

## Visão Geral

Este projeto é um **Sistema de Gerenciamento de Filmes** desenvolvido com Ruby on Rails. Ele permite que os usuários gerenciem filmes, gêneros e diretores. APlica um CRUD (Criar, Ler, Atualizar, Deletar) de entidades e upload de imagens de banners dos filmes.

## Estrutura do banco de dados

![Diagrama](./public/diagrama-movies.png)


## Gems Utilizadas
- Bullet (Detecção de N+1 Queries)
Durante o desenvolvimento, a gem Bullet é usada para detectar e alertar sobre ineficiências no carregamento de consultas SQL, como o problema de N+1 queries.
- Kaminari (Paginação)
A gem Kaminari é utilizada para a paginação de registros em listagens, tornando a navegação em grandes conjuntos de dados mais eficiente. 
- Active Storage (Gerenciamento de Arquivos)
A aplicação também utiliza o Active Storage para fazer upload e gerenciamento de arquivos, como banners de filmes.

## Setup do Projeto

### Com Docker

Para executar este projeto utilizando Docker, siga os passos abaixo:

#### Pré-requisitos

Certifique-se de ter o Docker e o Docker Compose instalados em sua máquina.

- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/install/)

#### Configuração

1. Clone o repositório relacionado:

```
   git clone git@github.com:SamuelRocha91/rails_movies_catalog.git
   ```

2. Entre na pasta do projeto:

```
   cd rails_movies_catalog
   ```

3. Rode o comando docker:

```
   docker-compose up
   ```

4. Acesse o navegador em:

```
   http://0.0.0.0:3000/
   ```

### Sem Docker

1. Clone o repositório:
   ```bash
   git clone git@github.com:SamuelRocha91/rails_movies_catalog.git
   ```

2. Acesse o diretório do projeto:
   ```bash
   cd rails_movies_catalog
   ```

3. Instale as dependências:
   ```bash
   bundle install
   ```

4. Configure o banco de dados:
   ```bash
   rails db:create
   rails db:migrate
   rails db:seed
   ```

5. Execute a aplicação:
   ```bash
   rails server
   ```

## Funcionalidades (Planejadas)

- **Gerenciamento de filmes**: 
  - Status de rascunho (Indica se o filme está em rascunho ou publicado);
  - Filtrar por data, caso esteja lançado ou não;
  - Gerar validação de campo de data e outros;
  - Tetes unitários
  - Responsividade
