require "spec_helper"

describe PointOfViewsController do
  describe "routing" do

    it "routes to #index" do
      get("/point_of_views").should route_to("point_of_views#index")
    end

    it "routes to #new" do
      get("/point_of_views/new").should route_to("point_of_views#new")
    end

    it "routes to #show" do
      get("/point_of_views/1").should route_to("point_of_views#show", :id => "1")
    end

    it "routes to #edit" do
      get("/point_of_views/1/edit").should route_to("point_of_views#edit", :id => "1")
    end

    it "routes to #create" do
      post("/point_of_views").should route_to("point_of_views#create")
    end

    it "routes to #update" do
      put("/point_of_views/1").should route_to("point_of_views#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/point_of_views/1").should route_to("point_of_views#destroy", :id => "1")
    end

  end
end
