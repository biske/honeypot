require 'spec_helper'

describe "bids/new" do
  before(:each) do
    assign(:bid, stub_model(Bid,
      :description => "MyText",
      :how_much => "9.99"
    ).as_new_record)
  end

  it "renders new bid form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", bids_path, "post" do
      assert_select "textarea#bid_description[name=?]", "bid[description]"
      assert_select "input#bid_how_much[name=?]", "bid[how_much]"
    end
  end
end
