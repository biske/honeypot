require 'spec_helper'

describe "bmessages/show" do
  before(:each) do
    @bmessage = assign(:bmessage, stub_model(Bmessage,
      :content => "MyText",
      :bid => nil,
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
