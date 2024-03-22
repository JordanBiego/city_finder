# City Finder - Test Project

[![pt-br](https://img.shields.io/badge/lang-pt--br-green.svg)](https://github.com/JordanBiego/city_finder/blob/develop/README.pt-br.md)

## Description

This project is a test application for a job at Embarca. Its a simple city search feature where you can search trough cities or states.

## Requirements

- **Docker**;
- **Docker-compose**;


## Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/JordanBiego/city_finder.git
   ```
2. Navigate to the project directory:
    ```bash
    cd city_finder
    ```
3. Build the Docker containers:
    ```bash
    docker-compose build
    ```
4. Run the migrations:
    ```bash
    docker-compose run web bin/rails db:migrate
    ```
5. Run the seed to populate the database:
    ```bash
    docker-compose run web bin/rails db:seed
    ```
6. Run tests:
    ```bash
    docker-compose run web bin/rspec
    ```  
7. Run the app:
    ```bash
    docker-compose up
    ```
8. Visit http://localhost:3000 in your browser.

## Usage

1. Access the application at http://localhost:3000.
2. Users can search cities using the interface.
3. Run tests using RSpec.

## License:

This project is purely educational, please do not redistribute without consent!

