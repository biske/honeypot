require "spec_helper"

describe HmessagesController do
  describe "routing" do

    it "routes to #index" do
      get("/hmessages").should route_to("hmessages#index")
    end

    it "routes to #new" do
      get("/hmessages/new").should route_to("hmessages#new")
    end

    it "routes to #show" do
      get("/hmessages/1").should route_to("hmessages#show", :id => "1")
    end

    it "routes to #edit" do
      get("/hmessages/1/edit").should route_to("hmessages#edit", :id => "1")
    end

    it "routes to #create" do
      post("/hmessages").should route_to("hmessages#create")
    end

    it "routes to #update" do
      put("/hmessages/1").should route_to("hmessages#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/hmessages/1").should route_to("hmessages#destroy", :id => "1")
    end

  end
end
