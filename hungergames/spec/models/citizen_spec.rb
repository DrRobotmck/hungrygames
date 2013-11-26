require 'spec_helper'

describe Citizen do
	let(:citizen){Citizen.new}

	describe "::new" do
		context "no info" do
			it "has a name, age, gender, and belongs to a district" do
				expect(citizen).to have(1).errors_on (:name)
				expect(citizen).to have(1).errors_on (:age)
				expect(citizen).to have(1).errors_on (:gender)
				expect(citizen).to have(1).errors_on (:district_id)
				expect(citizen).to have(1).errors_on (:alive)
			end
		end
		context "has information"	do
			
			before do
				citizen.name = "Mck"
				citizen.age = 16
				citizen.gender = "m"
				citizen.district_id = 1
				citizen.alive = true
			end
			it "has a name, age, gender, and belongs to a district" do
				expect(citizen).to have(0).errors_on (:name)
				expect(citizen).to have(0).errors_on (:age)
				expect(citizen).to have(0).errors_on (:gender)
				expect(citizen).to have(0).errors_on (:district_id)
				expect(citizen.alive).to be_true 
			end
		end
	end
end