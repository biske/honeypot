require "spec_helper"

describe BmessagesController do
  describe "routing" do

    it "routes to #index" do
      get("/bmessages").should route_to("bmessages#index")
    end

    it "routes to #new" do
      get("/bmessages/new").should route_to("bmessages#new")
    end

    it "routes to #show" do
      get("/bmessages/1").should route_to("bmessages#show", :id => "1")
    end

    it "routes to #edit" do
      get("/bmessages/1/edit").should route_to("bmessages#edit", :id => "1")
    end

    it "routes to #create" do
      post("/bmessages").should route_to("bmessages#create")
    end

    it "routes to #update" do
      put("/bmessages/1").should route_to("bmessages#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/bmessages/1").should route_to("bmessages#destroy", :id => "1")
    end

  end
end
