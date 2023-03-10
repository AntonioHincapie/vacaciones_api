# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(name: "Marco", email: "marco@mail.com", password: "passwordM")
User.create(name: "Antonio", email: "antonio@mail.com", password: "passwordA")

Vacation.create(start_date: "2023-03-01", end_date: "2023-03-06", department: "IT", employee_name: "Andres Rodriguez")
Vacation.create(start_date: "2023-02-01", end_date: "2023-02-06", department: "IT", employee_name: "Andres Rodriguez")
Vacation.create(start_date: "2023-01-01", end_date: "2023-01-05", department: "IT", employee_name: "Andres Rodriguez")
Vacation.create(start_date: "2022-12-01", end_date: "2022-12-05", department: "IT", employee_name: "Andres Rodriguez")
Vacation.create(start_date: "2022-11-01", end_date: "2022-11-05", department: "IT", employee_name: "Andres Rodriguez")
Vacation.create(start_date: "2021-02-25", end_date: "2023-03-02", department: "Marketing", employee_name: "Felipe Parra")
Vacation.create(start_date: "2021-01-25", end_date: "2023-02-02", department: "Marketing", employee_name: "Felipe Parra")
Vacation.create(start_date: "2022-12-25", end_date: "2023-01-02", department: "Marketing", employee_name: "Felipe Parra")
Vacation.create(start_date: "2022-11-25", end_date: "2022-12-02", department: "Marketing", employee_name: "Felipe Parra")
Vacation.create(start_date: "2022-10-25", end_date: "2022-11-02", department: "Marketing", employee_name: "Felipe Parra")
