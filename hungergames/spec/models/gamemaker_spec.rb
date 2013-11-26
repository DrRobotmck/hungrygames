require 'spec_helper'

describe Gamemaker do
	let(:game){Game.create(name: "Hungertron 5000")}
	let(:district){District.new(name: "District 3")}
	let(:trib1){Tribute.create(name: "poop", age: 6, gender: "m", alive: true, district_id: 1)}
	let(:trib2){Tribute.create(name: "doop", age: 18, gender: "m", alive: true, district_id: 1)}
	let(:trib3){Tribute.create(name: "snoop", age: 5, gender: "f", alive: true, district_id: 1)}
	let(:trib4){Tribute.create(name: "boop", age: 18, gender: "f", alive: true, district_id: 1)}
	let(:escort1){Escort.create(name: "loop", age: 20, gender: "f", alive: true, district_id: 1)}

	context "Reaping" do
		let(:reaper){Gamemaker.new(game, district)}
		before do
			trib1.save!
			trib2.save!
			trib3.save!
			trib4.save!
			escort1.save!
			district.id = 1
			district.save
		end
		
		it "selects two tributes from a district" do
			reaping = reaper.select_tributes
			expect(reaping.count).to eq(2)
			expect(reaping[0].rating).to be > 0
		end
		it "selects one escort from one district" do
			escort = reaper.select_escort
			expect(escort.count).to eq(1)
			expect(escort[0].district_id).to eq(district.id)
		end
	end
end