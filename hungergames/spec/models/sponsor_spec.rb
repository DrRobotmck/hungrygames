require 'spec_helper'

describe "Sponsor" do

	context "is a sponsor" do
	
		let(:sponsor){Sponsor.create(name: "poop", age: 5, gender: "m", alive: true, district_id: 14)}
		let(:tribute){Tribute.create(name: "doop", age: 18, gender: "m", alive: true, district_id: 5)}
		
		before do
			tribute.sponsorships.create(sponsor: sponsor)
		end
	
		it "has sponsorships" do
			expect(sponsor.sponsorships.count).to eq(1)
		end
	end
end