require 'spec_helper'

describe "hmessages/edit" do
  before(:each) do
    @hmessage = assign(:hmessage, stub_model(Hmessage,
      :content => "MyText",
      :point_of_view => nil,
      :user => nil
    ))
  end

  it "renders the edit hmessage form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", hmessage_path(@hmessage), "post" do
      assert_select "textarea#hmessage_content[name=?]", "hmessage[content]"
      assert_select "input#hmessage_point_of_view[name=?]", "hmessage[point_of_view]"
      assert_select "input#hmessage_user[name=?]", "hmessage[user]"
    end
  end
end
