require 'spec_helper'

describe "bmessages/index" do
  before(:each) do
    assign(:bmessages, [
      stub_model(Bmessage,
        :content => "MyText",
        :bid => nil,
        :user => nil
      ),
      stub_model(Bmessage,
        :content => "MyText",
        :bid => nil,
        :user => nil
      )
    ])
  end

  it "renders a list of bmessages" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
