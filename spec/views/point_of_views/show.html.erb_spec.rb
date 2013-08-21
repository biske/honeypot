require 'spec_helper'

describe "point_of_views/show" do
  before(:each) do
    @point_of_view = assign(:point_of_view, stub_model(PointOfView,
      :who => "Who",
      :what => "MyText",
      :where => "Where",
      :duration => 1,
      :how_much => "9.99",
      :contact => "Contact"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Who/)
    rendered.should match(/MyText/)
    rendered.should match(/Where/)
    rendered.should match(/1/)
    rendered.should match(/9.99/)
    rendered.should match(/Contact/)
  end
end
