class HgController < ApplicationController

	def index
		@game = Game.create(name: "Hungerful Treatise")
		@district = District.all
	end

	def show
		@game = Game.find(Game.all.length)
		@districts = District.all
		@gamemaker = Gamemaker.new(@game, @districts)

		render json: @gamemaker.select_tributes
	end

end