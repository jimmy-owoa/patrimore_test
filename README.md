# PatrimoreTest

This is a Ruby on Rails application that allows users to search by IATA code for the temperature and location of a city. The application uses the [Weatherapi](https://www.weatherapi.com/) API to fetch the data.

## Getting Started

To run the application, clone the repository and navigate to the root directory of the project.

```
$ git clone https://github.com/jimmy-owoa/patrimore_test.git
$ cd patrimore_test
```

## Prerequisites

The application requires the following to run:

* Ruby 3.2.1
* Rails 7.0.4.2
* MySQL 8.0.31

## Installing

1. Install dependencies
```bundle install```

2. Create database
```rails db:create```

3. Run migrations
```rails db:migrate```

4. Run the server
```rails s```

## Usage

To use the application, sign up or log in to an existing account. Once logged in, you can search for the temperature and location of a city by entering its IATA code. The application caches the results for faster access and stores the last searched cities for each user.

## Running the tests

The application comes with RSpec tests to ensure the functionality of the user creation and registration. To run the tests, navigate to the root directory of the project and execute the following command:

```rspec```

## Built With

* [Ruby on Rails](https://rubyonrails.org/) - The web framework used
* [MySQL](https://www.mysql.com/) - Database
* [RSpec](https://rspec.info/) - Testing framework
* [Bootstrap](https://getbootstrap.com/) - CSS framework
* [Weatherapi](https://www.weatherapi.com/) - Weather API

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details


