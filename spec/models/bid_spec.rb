require 'spec_helper'

describe Bid do
  context "select" do
  	it "should mark bid as selected" do
  		bid = FactoryGirl.build :bid
  		bid.selected = true
  		bid.save!
  		bid.selected.should be_true
  	end
  end
  context "selected?" do
  	it "should return true if bid is not selected" do
  		bid = FactoryGirl.build :bid
  		bid.selected = true
  		bid.save!
  		bid.not_selected?
  	end

  	it "should return false if bid is selected" do
  		bid = FactoryGirl.build :bid
  		bid.selected = false
  		bid.save!
  		bid.not_selected?.should be_false
  	end
  end
end
