require 'spec_helper'

describe "hmessages/show" do
  before(:each) do
    @hmessage = assign(:hmessage, stub_model(Hmessage,
      :content => "MyText",
      :point_of_view => nil,
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    rendered.should match(//)
    rendered.should match(//)
  end
end
