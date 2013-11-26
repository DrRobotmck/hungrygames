require 'spec_helper'

describe "Escort" do

	context "is an escort" do
	
		let(:escort){Escort.create(name: "Matahari", age: 5, gender: "f", alive: true, district_id: 5)}
		let(:tribute1){Tribute.create(name: "doop", age: 18, gender: "m", alive: true, district_id: 5)}
		let(:tribute2){Tribute.create(name: "snoop", age: 18, gender: "f", alive: true, district_id: 5)}
		
		before do
			escort.tributes << tribute1
			escort.tributes << tribute2
		end
	
		it "has two tributes" do
			expect(escort.tributes.count).to eq(2)
			expect(escort.tributes[0].gender).to_not eq(escort.tributes[1].gender)
		end
	end
end