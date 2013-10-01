require "spec_helper"

describe HiresController do
  describe "routing" do

    it "routes to #index" do
      get("/hires").should route_to("hires#index")
    end

    it "routes to #new" do
      get("/hires/new").should route_to("hires#new")
    end

    it "routes to #show" do
      get("/hires/1").should route_to("hires#show", :id => "1")
    end

    it "routes to #edit" do
      get("/hires/1/edit").should route_to("hires#edit", :id => "1")
    end

    it "routes to #create" do
      post("/hires").should route_to("hires#create")
    end

    it "routes to #update" do
      put("/hires/1").should route_to("hires#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/hires/1").should route_to("hires#destroy", :id => "1")
    end

  end
end
