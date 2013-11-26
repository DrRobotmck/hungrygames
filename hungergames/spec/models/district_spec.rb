require 'spec_helper'

describe District do 
  let(:district) {District.new(name:"District 3")}

  describe "::new" do 
    it "has a name" do 
      expect(district.name?).to be_true 
    end 
  end 
end