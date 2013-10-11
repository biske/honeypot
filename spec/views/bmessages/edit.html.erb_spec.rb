require 'spec_helper'

describe "bmessages/edit" do
  before(:each) do
    @bmessage = assign(:bmessage, stub_model(Bmessage,
      :content => "MyText",
      :bid => nil,
      :user => nil
    ))
  end

  it "renders the edit bmessage form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", bmessage_path(@bmessage), "post" do
      assert_select "textarea#bmessage_content[name=?]", "bmessage[content]"
      assert_select "input#bmessage_bid[name=?]", "bmessage[bid]"
      assert_select "input#bmessage_user[name=?]", "bmessage[user]"
    end
  end
end
