require 'spec_helper'

describe "hmessages/new" do
  before(:each) do
    assign(:hmessage, stub_model(Hmessage,
      :content => "MyText",
      :point_of_view => nil,
      :user => nil
    ).as_new_record)
  end

  it "renders new hmessage form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", hmessages_path, "post" do
      assert_select "textarea#hmessage_content[name=?]", "hmessage[content]"
      assert_select "input#hmessage_point_of_view[name=?]", "hmessage[point_of_view]"
      assert_select "input#hmessage_user[name=?]", "hmessage[user]"
    end
  end
end
