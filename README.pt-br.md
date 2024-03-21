# Projeto de Teste Redway Newsletter

[![en](https://img.shields.io/badge/lang-en-red.svg)](https://github.com/JordanBiego/city_finder/blob/develop/README.md)

## Descrição

Esse é um projeto teste referente a uma oportunidade na Embarca, Trata-se de uma aplicação para procurar cidades.

## Requisitos

- **Docker**;
- **Docker-compose**;


## Instalação

1. Clone o repositório:
   ```bash
   git clone https://github.com/JordanBiego/city_finder.git
   ```
2. Navegue ao diretório do projeto:
    ```bash
    cd city_finder
    ```
3. Crie o container:
    ```bash
    docker-compose build
    ```
4. Rode as migrações:
    ```bash
    docker-compose run web bin/rails db:migrate
    ```
5. Rode o seed para popular o banco de dados:
    ```bash
    docker-compose run web bin/rails db:seed
    ```
6. Rode os testes:
    ```bash
    docker-compose run web bin/rspec
    ```  
7. Rode o app:
    ```bash
    docker-compose up
    ```
8. Visite http://localhost:3000 no seu navegador.

## Usage

1. Acesse a aplicação em http://localhost:3000.
2. Usuários podem pesquisar cidades na interface.
3. Execute os teste com o RSpec.

## License:

This project is purely educational, please do not redistribute without consent!

