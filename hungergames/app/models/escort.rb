class Escort < Citizen
	has_many :tributes, :primary_key => :district_id, :foreign_key => :district_id
end