class Gamemaker
	attr_accessor :game, :district
	
	def initialize(game, district)
		@game = game
		@district = district
	end

	def select_tributes
		district_population = Citizen.where( age: (12..18) )
		district_population.sample(2)
		district_population.map do |tribute|
			tribute.type = "Tribute"
			tribute.rating = rand(1..10)
		end
		return district_population
	end
	def select_escort
		district_population = Citizen.where( age: (19..50) )
		district_population.sample(1)
		district_population.map do |escort|
			escort.type = "Escort"
		end
		return district_population
	end


end