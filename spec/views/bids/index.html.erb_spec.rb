require 'spec_helper'

describe "bids/index" do
  before(:each) do
    assign(:bids, [
      stub_model(Bid,
        :description => "MyText",
        :how_much => "9.99"
      ),
      stub_model(Bid,
        :description => "MyText",
        :how_much => "9.99"
      )
    ])
  end

  it "renders a list of bids" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
  end
end
