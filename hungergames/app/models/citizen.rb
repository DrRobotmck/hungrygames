class Citizen < ActiveRecord::Base

	validates :name, :age, :gender, presence: true
	belongs_to :district
end