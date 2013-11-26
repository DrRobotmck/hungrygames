class Gamemaker
	attr_accessor :game, :district, :tributes, :rounds
	
	def initialize(game, district)
		@game = game
		@district = district
		@tributes = []
		@rounds = []
	end

	def select_tributes
		district_population = []
		@district.each do |d|
			district_f = Citizen.where( age: (12..18), gender: "f", district_id: d.id ).sample
			district_m = Citizen.where( age: (12..18), gender: "m", district_id: d.id ).sample
			district_population << district_m
			district_population << district_f
		end
		
		district_population.map do |tribute|
			tribute.type = "Tribute"
			tribute.rating = rand(1..10)
			@tributes << tribute
		end
		
		return @tributes
	end
	def select_escort
		escorts = []
		@district.each do |d|
			district_pops = Citizen.where( age: (19..50), district_id: d.id ).sample
			escorts << district_pops
		end

		escorts.map do |escort|
			escort.type = "Escort"
		end
			return escorts
	end

	def starter
		@rounds << Round.all
		@rounds.flatten
		@tributes.each do |t|
			t.rounds << @rounds[0]
		end
	end
end