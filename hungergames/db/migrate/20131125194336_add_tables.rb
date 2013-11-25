class AddTables < ActiveRecord::Migration
  def change
  	create_table :citizens do |c|
  		c.string :name
  		c.integer :age
  		c.string :gender
  		c.boolean :alive?
  		c.string :type
  		c.integer :rating
  	end

  	create_table :games do |g|
  		g.string :name
  	end

  	create_table :rounds do |r|
  		r.string :name
  	end

  	create_table :districts do |d|
  		d.string :name
  	end

  	create_table :sponsorships do |s|
  		s.integer :sponsor_id, index: true
  		s.integer :tribute_id, index: true
  	end

  	create_table :citizens_rounds do |j|
  		j.integer :citizen_id
  		j.integer :round_id
  	end
  end
end
