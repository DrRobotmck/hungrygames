require 'spec_helper'

describe Game do
	
	let(:game){Game.new(name: "Hungry Games 5000TRON")}

	describe "::new" do
		it "has a name" do
			expect(game.name?).to be_true
		end
		# it "has many districts" do

		# end
		# it "has many rounds" do
		# 	expect
		# end

	end

end