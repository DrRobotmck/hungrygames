class Citizen < ActiveRecord::Base

	validates :name, :age, :gender, :district_id, presence: true

	#for validating any boolean
	validates :alive, inclusion: [true,false]
	belongs_to :district
	has_and_belongs_to_many :rounds


end