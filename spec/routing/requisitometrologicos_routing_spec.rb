require "spec_helper"

describe RequisitometrologicosController do
  describe "routing" do

    it "routes to #index" do
      get("/requisitometrologicos").should route_to("requisitometrologicos#index")
    end

    it "routes to #new" do
      get("/requisitometrologicos/new").should route_to("requisitometrologicos#new")
    end

    it "routes to #show" do
      get("/requisitometrologicos/1").should route_to("requisitometrologicos#show", :id => "1")
    end

    it "routes to #edit" do
      get("/requisitometrologicos/1/edit").should route_to("requisitometrologicos#edit", :id => "1")
    end

    it "routes to #create" do
      post("/requisitometrologicos").should route_to("requisitometrologicos#create")
    end

    it "routes to #update" do
      put("/requisitometrologicos/1").should route_to("requisitometrologicos#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/requisitometrologicos/1").should route_to("requisitometrologicos#destroy", :id => "1")
    end

  end
end
