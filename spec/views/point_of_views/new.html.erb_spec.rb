require 'spec_helper'

describe "point_of_views/new" do
  before(:each) do
    assign(:point_of_view, stub_model(PointOfView,
      :who => "MyString",
      :what => "MyText",
      :where => "MyString",
      :duration => 1,
      :how_much => "9.99",
      :contact => "MyString"
    ).as_new_record)
  end

  it "renders new point_of_view form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", point_of_views_path, "post" do
      assert_select "input#point_of_view_who[name=?]", "point_of_view[who]"
      assert_select "textarea#point_of_view_what[name=?]", "point_of_view[what]"
      assert_select "input#point_of_view_where[name=?]", "point_of_view[where]"
      assert_select "input#point_of_view_duration[name=?]", "point_of_view[duration]"
      assert_select "input#point_of_view_how_much[name=?]", "point_of_view[how_much]"
      assert_select "input#point_of_view_contact[name=?]", "point_of_view[contact]"
    end
  end
end
