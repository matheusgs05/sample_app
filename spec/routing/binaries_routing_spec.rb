require "spec_helper"

describe BinariesController do
  describe "routing" do

    it "routes to #index" do
      get("/binaries").should route_to("binaries#index")
    end

    it "routes to #new" do
      get("/binaries/new").should route_to("binaries#new")
    end

    it "routes to #show" do
      get("/binaries/1").should route_to("binaries#show", :id => "1")
    end

    it "routes to #edit" do
      get("/binaries/1/edit").should route_to("binaries#edit", :id => "1")
    end

    it "routes to #create" do
      post("/binaries").should route_to("binaries#create")
    end

    it "routes to #update" do
      put("/binaries/1").should route_to("binaries#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/binaries/1").should route_to("binaries#destroy", :id => "1")
    end

  end
end
