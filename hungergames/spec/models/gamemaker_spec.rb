require 'spec_helper'

describe Gamemaker do
	let(:game){Game.create(name: "Hungertron 5000")}
	let(:round){Round.all}
	let(:district){District.all}
		let(:tributes){Citizen.all}
		let(:escort1){Citizen.all}

	context "Reaping" do
		
		before do
			tributes.each{|x| x.save!}
			escort1.each{|x| x.save!}
			district.each{|x| x.save!}
		end
		let(:reaper){Gamemaker.new(game, district)}
		it "selects two tributes from a district" do
			reaping = reaper.select_tributes
			expect(reaping.length).to eq(24)
			expect(reaping.first.rating).to be > 0
			expect(reaping.first.district_id).to eq(reaping[1].district_id)
			expect(reaping[0].gender).to eq("m")
			expect(reaping[1].gender).to eq("f")
		end
		it "selects one escort from one district" do
			escort = reaper.select_escort
			expect(escort.count).to eq(12)
			expect(escort[0].district_id).to eq(district[0].id)
		end

		it "has 24 tributes" do
			reaping = reaper.select_tributes
			expect(reaping.length).to eq(24)
		end

	end

	context "Round One: FIGHT!!" do
		before do
			round.each{|r| r.save!}
			tributes.each{|x| x.save!}
			escort1.each{|x| x.save!}
			district.each{|x| x.save!}
		end
		let(:rounder){Gamemaker.new(game, district)}
		it "Starts the game" do
			rounder.select_tributes
			rounder.select_escort
			rounder.starter
			expect(round.count).to be > 0
			expect(rounder.tributes.count).to eq(24)
			# binding.pry	
			expect(rounder.tributes[0].rounds.length).to eq(rounder.rounds[0].length)

		end

	end
end