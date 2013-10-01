require 'spec_helper'

describe "hires/show" do
  before(:each) do
    @hire = assign(:hire, stub_model(Hire))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
