require "spec_helper"

describe IdTypesController do
  describe "routing" do

    it "routes to #index" do
      get("/id_types").should route_to("id_types#index")
    end

    it "routes to #new" do
      get("/id_types/new").should route_to("id_types#new")
    end

    it "routes to #show" do
      get("/id_types/1").should route_to("id_types#show", :id => "1")
    end

    it "routes to #edit" do
      get("/id_types/1/edit").should route_to("id_types#edit", :id => "1")
    end

    it "routes to #create" do
      post("/id_types").should route_to("id_types#create")
    end

    it "routes to #update" do
      put("/id_types/1").should route_to("id_types#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/id_types/1").should route_to("id_types#destroy", :id => "1")
    end

  end
end
