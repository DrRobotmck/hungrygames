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
			end
		end
		context "has information"	do
			let(:dis){District.new}
			
			before do
				dis.name = "number 1"
				dis.save
				citizen.name = "Mck"
				citizen.age = 16
				citizen.gender = "male"
				citizen.district_id = 1
			end
			it "has a name, age, gender, and belongs to a district" do
				expect(citizen).to have(0).errors_on (:name)
				expect(citizen).to have(0).errors_on (:age)
				expect(citizen).to have(0).errors_on (:gender)
				expect(citizen).to have(0).errors_on (:district_id)
			end
		end
	end
end