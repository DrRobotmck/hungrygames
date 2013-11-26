require 'spec_helper'

describe "Tribute" do

	context "is a tribute" do
	
		let(:sponsor){Sponsor.create(name: "poop", age: 5, gender: "m", alive: true, district_id: 14)}
		let(:tribute){Tribute.create(name: "doop", age: 18, gender: "m", alive: true, district_id: 5)}
		
		before do
			sponsor.sponsorships.create(tribute: tribute)
		end
	
		it "has sponsorships" do
			expect(tribute.sponsorships.count).to eq(1)
		end
	end
end