class Game < ActiveRecord::Base
	validate :name, presence: true
	
	# has_many :rounds
end