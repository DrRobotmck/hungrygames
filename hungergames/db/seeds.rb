# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.firs)ribute.create(name: "poop", age: 6, gender: "m", alive: true, district_id: 1)
District.delete_all
Citizen.delete_all
Round.delete_all

#rounds
	Round.create(name: "Round 1")
	Round.create(name: "Round 2")
	Round.create(name: "Round 3")
	Round.create(name: "Round 4")
	Round.create(name: "Round 5")

#districts
	District.create(name: "District One")
	District.create(name: "District Two")
	District.create(name: "District Three")
	District.create(name: "District Four")
	District.create(name: "District Five")
	District.create(name: "District Six")
	District.create(name: "District Seven")
	District.create(name: "District Eight")
	District.create(name: "District Nine")
	District.create(name: "District Ten")
	District.create(name: "District Eleven")
	District.create(name: "District Twelve")

#citizen
Citizen.create(name: "doop", age: 18, gender: "m", alive: true, district_id: 1)
Citizen.create(name: "snoop", age: 5, gender: "f", alive: true, district_id: 1)
Citizen.create(name: "boop", age: 18, gender: "f", alive: true, district_id: 1)
Citizen.create(name: "doop", age: 18, gender: "m", alive: true, district_id: 2)
Citizen.create(name: "boop", age: 18, gender: "f", alive: true, district_id: 2)
Citizen.create(name: "doop", age: 18, gender: "m", alive: true, district_id: 3)
Citizen.create(name: "boop", age: 18, gender: "f", alive: true, district_id: 3)
Citizen.create(name: "doop", age: 18, gender: "m", alive: true, district_id: 4)
Citizen.create(name: "boop", age: 18, gender: "f", alive: true, district_id: 4)
Citizen.create(name: "doop", age: 18, gender: "m", alive: true, district_id: 5)
Citizen.create(name: "boop", age: 18, gender: "f", alive: true, district_id: 5)
Citizen.create(name: "doop", age: 18, gender: "m", alive: true, district_id: 6)
Citizen.create(name: "boop", age: 18, gender: "f", alive: true, district_id: 6)
Citizen.create(name: "doop", age: 18, gender: "m", alive: true, district_id: 7)
Citizen.create(name: "boop", age: 18, gender: "f", alive: true, district_id: 7)
Citizen.create(name: "doop", age: 18, gender: "m", alive: true, district_id: 8)
Citizen.create(name: "boop", age: 18, gender: "f", alive: true, district_id: 8)
Citizen.create(name: "doop", age: 18, gender: "m", alive: true, district_id: 9)
Citizen.create(name: "boop", age: 18, gender: "f", alive: true, district_id: 9)
Citizen.create(name: "doop", age: 18, gender: "m", alive: true, district_id: 10)
Citizen.create(name: "boop", age: 18, gender: "f", alive: true, district_id: 10)
Citizen.create(name: "doop", age: 18, gender: "m", alive: true, district_id: 11)
Citizen.create(name: "boop", age: 18, gender: "f", alive: true, district_id: 11)
Citizen.create(name: "doop", age: 18, gender: "m", alive: true, district_id: 12)
Citizen.create(name: "boop", age: 18, gender: "f", alive: true, district_id: 12)
Citizen.create(name: "loop", age: 20, gender: "f", alive: true, district_id: 1)
Citizen.create(name: "loop", age: 20, gender: "f", alive: true, district_id: 2)
Citizen.create(name: "loop", age: 20, gender: "f", alive: true, district_id: 3)
Citizen.create(name: "loop", age: 20, gender: "f", alive: true, district_id: 4)
Citizen.create(name: "loop", age: 20, gender: "f", alive: true, district_id: 5)
Citizen.create(name: "loop", age: 20, gender: "f", alive: true, district_id: 6)
Citizen.create(name: "loop", age: 20, gender: "f", alive: true, district_id: 7)
Citizen.create(name: "loop", age: 20, gender: "f", alive: true, district_id: 8)
Citizen.create(name: "loop", age: 20, gender: "f", alive: true, district_id: 9)
Citizen.create(name: "loop", age: 20, gender: "f", alive: true, district_id: 10)
Citizen.create(name: "loop", age: 20, gender: "f", alive: true, district_id: 11)
Citizen.create(name: "loop", age: 20, gender: "f", alive: true, district_id: 12)