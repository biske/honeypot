require 'spec_helper'

describe "point_of_views/index" do
  before(:each) do
    assign(:point_of_views, [
      stub_model(PointOfView,
        :who => "Who",
        :what => "MyText",
        :where => "Where",
        :duration => 1,
        :how_much => "9.99",
        :contact => "Contact"
      ),
      stub_model(PointOfView,
        :who => "Who",
        :what => "MyText",
        :where => "Where",
        :duration => 1,
        :how_much => "9.99",
        :contact => "Contact"
      )
    ])
  end

  it "renders a list of point_of_views" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Who".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Where".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Contact".to_s, :count => 2
  end
end
