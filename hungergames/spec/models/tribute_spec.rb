require 'spec_helper'

describe "Tribute" do
		let(:sponsor){Sponsor.create(name: "poop", age: 5, gender: "m", alive: true, district_id: 14)}
		let(:tribute){Tribute.create(name: "doop", age: 18, gender: "m", alive: true, district_id: 5, rating: 5)}
	
	context "is has sponsorships" do	
		before do
			sponsor.sponsorships.create(tribute: tribute)
		end
	
		it "has sponsorships" do
			expect(tribute.sponsorships.count).to eq(1)
		end
	end

	context "it has a rating" do
		let(:tribute){Tribute.create(name: "doop", age: 18, gender: "m", alive: true, district_id: 5, rating: 0)}
		it "has a default rating of 0" do
			expect(tribute.rating).to eq(0)
		end
	end

	context "it has been rated" do
		before do
			tribute.rating = 5
		end
		it "has a rating greater than 0" do
			expect(tribute.rating).to_not eq(0)
		end
	end

end