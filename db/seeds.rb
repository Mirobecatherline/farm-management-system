# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Factory.create(name: "Mirobe Coffee Estate")

Coffeberry.create(name: "Cherry")
Coffeberry.create(name: "Mbuni")

Factoryfarm.create(name: "Farm 1", factory_id: 1)
Factoryfarm.create(name: "Farm 2", factory_id: 1)


Factoryfarmberry.create(kg: 100, season: "2022", coffeberries_id: 1, factoryfarms_id: 1)
Factoryfarmberry.create(kg: 200, season: "2022", coffeberries_id: 2, factoryfarms_id: 1)
Factoryfarmberry.create(kg: 150, season: "2022", coffeberries_id: 1, factoryfarms_id: 2)
Factoryfarmberry.create(kg: 250, season: "2022", coffeberries_id: 2, factoryfarms_id: 2)

Farmer.create(name: "John Doe", phoneNo: "123456789", nationalId: "123456")
Farmer.create(name: "Jane Doe", phoneNo: "987654321", nationalId: "654321")


Farmerberry.create(kg: 500, season: "2022", coffeberries_id: 1, farmers_id: 1)
Farmerberry.create(kg: 750, season: "2022", coffeberries_id: 2, farmers_id: 1)
Farmerberry.create(kg: 600, season: "2022", coffeberries_id: 1, farmers_id: 2)
Farmerberry.create(kg: 900, season: "2022", coffeberries_id: 2, farmers_id: 2)

Worker.create(name: "Worker 1", role: "Harvester", salary: 1000, factory_id: 1)
Worker.create(name: "Worker 2", role: "Roaster", salary: 1500, factory_id: 1)

Expenditure.create(factory_id: 1, name: "Harvesting expenses", status: "paid", factoryfarms_id: 1)
Expenditure.create(factory_id: 1, name: "Roasting expenses", status: "unpaid", factoryfarms_id: 2)
