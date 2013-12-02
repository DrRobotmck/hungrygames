class HgController < ApplicationController

	def index
		@game = Game.create(name: "Hungerful Treatise")
		@district = District.all
	end

	def show
		@game = Game.find(Game.all.length)
		@districts = District.all
		@gamemaker = Gamemaker.new(@game, @districts)
		@summary = {tributes: @gamemaker.select_tributes, escorts: @gamemaker.select_escort, start: @gamemaker.starter, first:@gamemaker.first_fight, second: @gamemaker.second_fight, third: @gamemaker.third_fight, fourth: @gamemaker.fourth_fight, finale: @gamemaker.finale}
		# binding.pry
		render json: @summary
	end

end