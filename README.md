# Heroes and Powers API
This is a simple API for managing heroes and their powers. The API allows you to perform basic CRUD operations on heroes, powers, and the relationship between them.

## Getting Started
To get started, follow these steps:

1. Clone the repository: git clone https:github.com/Dancunrandy/-Superheroes
2. Install the required dependencies: bundle install
3. Create the database and run migrations: rails db:create && rails db:migrate
4. Seed the database with sample data: rails db:seed
5. Start the server: rails 
Once the server is running, you can access the API at http://localhost:3000.

### Endpoints
The API provides the following endpoints:

* GET /heroes
Returns a list of all heroes in the database.

* GET /heroes/:id
Returns a specific hero.

* DELETE /heroes/:id
Deletes a hero.

* GET /powers
Returns a list of all powers in the database.

* GET /powers/:id
Returns a specific power.

* PATCH /powers/:id
Updates an existing power.

* DELETE /powers/:id
Deletes a power.

* GET /hero_powers
Returns a list of all hero powers in the database.

* GET /hero_powers/:id
Returns a specific hero power.

* POST /hero_powers
Creates a new hero power.

* PATCH /hero_powers/:id
Updates an existing hero power.

* DELETE /hero_powers/:id
Deletes a hero power.
## Contributing
Contributions are welcome! If you'd like to contribute, please fork the repository and make a pull request.

## License
This project is licensed under the MIT License. See the LICENSE file for details.



