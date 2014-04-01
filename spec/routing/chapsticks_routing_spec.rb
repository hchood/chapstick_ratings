require "spec_helper"

describe ChapsticksController do
  describe "routing" do

    it "routes to #index" do
      get("/chapsticks").should route_to("chapsticks#index")
    end

    it "routes to #new" do
      get("/chapsticks/new").should route_to("chapsticks#new")
    end

    it "routes to #show" do
      get("/chapsticks/1").should route_to("chapsticks#show", :id => "1")
    end

    it "routes to #edit" do
      get("/chapsticks/1/edit").should route_to("chapsticks#edit", :id => "1")
    end

    it "routes to #create" do
      post("/chapsticks").should route_to("chapsticks#create")
    end

    it "routes to #update" do
      put("/chapsticks/1").should route_to("chapsticks#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/chapsticks/1").should route_to("chapsticks#destroy", :id => "1")
    end

  end
end
