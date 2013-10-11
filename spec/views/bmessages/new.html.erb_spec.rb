require 'spec_helper'

describe "bmessages/new" do
  before(:each) do
    assign(:bmessage, stub_model(Bmessage,
      :content => "MyText",
      :bid => nil,
      :user => nil
    ).as_new_record)
  end

  it "renders new bmessage form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", bmessages_path, "post" do
      assert_select "textarea#bmessage_content[name=?]", "bmessage[content]"
      assert_select "input#bmessage_bid[name=?]", "bmessage[bid]"
      assert_select "input#bmessage_user[name=?]", "bmessage[user]"
    end
  end
end
