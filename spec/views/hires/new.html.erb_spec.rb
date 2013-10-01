require 'spec_helper'

describe "hires/new" do
  before(:each) do
    assign(:hire, stub_model(Hire).as_new_record)
  end

  it "renders new hire form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", hires_path, "post" do
    end
  end
end
