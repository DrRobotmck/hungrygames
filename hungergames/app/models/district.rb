class District < ActiveRecord::Base
	validate :name, presence: true
	has_many :citizens
end