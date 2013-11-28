class Gamemaker
	attr_accessor :game, :district, :tributes, :rounds, :losers, :winner
	a = 0
	
	def initialize(game, district)
		@game = game
		@district = district
		@tributes = []
		@rounds = []
		@losers = []
		@winner = []
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
			t.save
		end
	end

	def first_fight
		round_one = Round.find(1)
		round_two = Round.find(2)
		round_three = Round.find(3)
		round_four = Round.find(4)
		round_five = Round.find(5)
		tribs = round_one.citizens
		12.times do
			fight_zone = tribs.sample(2)
			if fight_zone[0].rating > fight_zone[1].rating
					fight_zone[1].alive = false
					fight_zone[1].save
					@losers<< fight_zone[1]
					round_one.citizens.delete(fight_zone[1])
					round_two.citizens.delete(fight_zone[1])
					round_three.citizens.delete(fight_zone[1])
					round_four.citizens.delete(fight_zone[1])
					round_five.citizens.delete(fight_zone[1])
			elsif fight_zone[1].rating > fight_zone[0].rating
					fight_zone[0].alive = false
					fight_zone[0].save
					@losers << fight_zone[0]
					round_one.citizens.delete(fight_zone[0])
					round_two.citizens.delete(fight_zone[0])
					round_three.citizens.delete(fight_zone[0])
					round_four.citizens.delete(fight_zone[0])
					round_five.citizens.delete(fight_zone[0])
			else
				num = rand(1)
				fight_zone[num].alive = false
				fight_zone[num].save
				@losers << fight_zone[num]
				round_one.citizens.delete(fight_zone[num])
				round_two.citizens.delete(fight_zone[num])
				round_three.citizens.delete(fight_zone[num])
				round_four.citizens.delete(fight_zone[num])
				round_five.citizens.delete(fight_zone[num])
			end
		end
	end

	def second_fight
		round_two = Round.find(2)
		round_three = Round.find(3)
		round_four = Round.find(4)
		round_five = Round.find(5)
		tribs = round_two.citizens
		6.times do
			fight_zone = tribs.sample(2)
			if fight_zone[0].rating > fight_zone[1].rating
					fight_zone[1].alive = false
					@losers<< fight_zone[1]
					round_two.citizens.delete(fight_zone[1])
					round_three.citizens.delete(fight_zone[1])
					round_four.citizens.delete(fight_zone[1])
					round_five.citizens.delete(fight_zone[1])
			elsif fight_zone[1].rating > fight_zone[0].rating
					fight_zone[0].alive = false
					@losers << fight_zone[0]
					round_two.citizens.delete(fight_zone[0])
					round_three.citizens.delete(fight_zone[0])
					round_four.citizens.delete(fight_zone[0])
					round_five.citizens.delete(fight_zone[0])
			else
				num = rand(1)
				fight_zone[num].alive = false
				@losers << fight_zone[num]
				round_two.citizens.delete(fight_zone[num])
				round_three.citizens.delete(fight_zone[num])
				round_four.citizens.delete(fight_zone[num])
				round_five.citizens.delete(fight_zone[num])
			end
		end
	end

	def third_fight
		round_three = Round.find(3)
		round_four = Round.find(4)
		round_five = Round.find(5)
		tribs = round_three.citizens
		3.times do
			fight_zone = tribs.sample(2)
			if fight_zone[0].rating > fight_zone[1].rating
					fight_zone[1].alive = false
					@losers<< fight_zone[1]
					round_three.citizens.delete(fight_zone[1])
					round_four.citizens.delete(fight_zone[1])
					round_five.citizens.delete(fight_zone[1])
			elsif fight_zone[1].rating > fight_zone[0].rating
					fight_zone[0].alive = false
					@losers << fight_zone[0]
					round_three.citizens.delete(fight_zone[0])
					round_four.citizens.delete(fight_zone[0])
					round_five.citizens.delete(fight_zone[0])
			else
				num = rand(1)
				fight_zone[num].alive = false
				@losers << fight_zone[num]
				round_three.citizens.delete(fight_zone[num])
				round_four.citizens.delete(fight_zone[num])
				round_five.citizens.delete(fight_zone[num])
			end
		end
	end
	def fourth_fight
		round_four = Round.find(4)
		round_five = Round.find(5)
		tribs = round_four.citizens
			fight_zone = tribs.sample(2)
			if fight_zone[0].rating > fight_zone[1].rating
					fight_zone[1].alive = false
					@losers<< fight_zone[1]
					round_four.citizens.delete(fight_zone[1])
					round_five.citizens.delete(fight_zone[1])
			elsif fight_zone[1].rating > fight_zone[0].rating
					fight_zone[0].alive = false
					@losers << fight_zone[0]
					round_four.citizens.delete(fight_zone[0])
					round_five.citizens.delete(fight_zone[0])
			else
				num = rand(1)
				fight_zone[num].alive = false
				@losers << fight_zone[num]
				round_four.citizens.delete(fight_zone[num])
				round_five.citizens.delete(fight_zone[num])
			end
	end

	def finale
		round_five = Round.find(5)
		tribs = round_five.citizens
			fight_zone = tribs.sample(2)
			if fight_zone[0].rating > fight_zone[1].rating
					fight_zone[1].alive = false
					@losers<< fight_zone[1]
					round_five.citizens.delete(fight_zone[1])
					@winner << fight_zone[0]
			elsif fight_zone[1].rating > fight_zone[0].rating
					fight_zone[0].alive = false
					@losers << fight_zone[0]
					round_five.citizens.delete(fight_zone[0])
					@winner << fight_zone[1]
			else
				num = rand(1)
				fight_zone[num].alive = false
				@losers << fight_zone[num]
				round_five.citizens.delete(fight_zone[num])
				@winner << round_five.citizens.first
			end
	end

end