require 'spec_helper'

describe "hires/index" do
  before(:each) do
    assign(:hires, [
      stub_model(Hire),
      stub_model(Hire)
    ])
  end

  it "renders a list of hires" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
