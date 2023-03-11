# Vacations API

This API is build to manage the vacations of your employees on your onw company, it has a simple model of data to store the user and the vacations of the employees filtered by deparment. Also you can upload data with a csv file downloaded from GSheets. The front-end of this app is developed in React.js

## Live DEMO

- [API Documentation](https://vacations-foht.onrender.com/api-docs/index.html)

## Front-end Repo

- [Link to front-end repo](https://github.com/AntonioHincapie/vacation_app)

## Built With

- Ruby on Rails
- PostgreSQL

### Prerequisites

- Ruby installed
- PostgreSQL dbms running

### Setup

- Clone repository.

- bundle install.

- bundle exec figaro install (to create environment variables)

- Edit file application.yml (example on aplication.txt)

  - Provide the values for the variables
    - DATABASE_HOST
    - DATABASE_USER
    - DATABASE_PASSWORD

- rails db:create.

- rails db:migrate.

### Run app

- First run this rails server before run the front-end react-app.

  - rails server

## Author

## 👤 **Marco Antonio Hincapié Montes**

- GitHub: [@AntonioHincapie](https://github.com/AntonioHincapie)

- Twitter: [@MarcoHincapie](https://twitter.com/MarcoHincapie)

- LinkedIn: [LinkedIn](https://www.linkedin.com/in/antoniohincapie/)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

## Show your support

Give a ⭐️ if you like this project!

## 📝 License

This project is [MIT](./LICENSE) licensed.\
