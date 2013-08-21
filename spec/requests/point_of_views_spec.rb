require 'spec_helper'

describe "PointOfViews" do
  describe "GET /point_of_views" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get point_of_views_path
      response.status.should be(200)
    end
  end
end
