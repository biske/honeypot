require 'spec_helper'

describe User do
	before :each do
		@user = FactoryGirl.create(:user)
	end

  context "fullname" do
  	it "should return fullname if there is first name and last name" do
  		@user.fullname.should eq 'Foo Bar'
  	end
  end
end
