require 'spec_helper'

describe "hires/edit" do
  before(:each) do
    @hire = assign(:hire, stub_model(Hire))
  end

  it "renders the edit hire form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", hire_path(@hire), "post" do
    end
  end
end
