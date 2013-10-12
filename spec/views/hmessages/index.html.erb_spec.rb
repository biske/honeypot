require 'spec_helper'

describe "hmessages/index" do
  before(:each) do
    assign(:hmessages, [
      stub_model(Hmessage,
        :content => "MyText",
        :point_of_view => nil,
        :user => nil
      ),
      stub_model(Hmessage,
        :content => "MyText",
        :point_of_view => nil,
        :user => nil
      )
    ])
  end

  it "renders a list of hmessages" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
