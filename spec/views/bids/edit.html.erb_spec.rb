require 'spec_helper'

describe "bids/edit" do
  before(:each) do
    @bid = assign(:bid, stub_model(Bid,
      :description => "MyText",
      :how_much => "9.99"
    ))
  end

  it "renders the edit bid form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", bid_path(@bid), "post" do
      assert_select "textarea#bid_description[name=?]", "bid[description]"
      assert_select "input#bid_how_much[name=?]", "bid[how_much]"
    end
  end
end
