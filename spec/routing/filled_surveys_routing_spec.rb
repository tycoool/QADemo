require "spec_helper"

describe FilledSurveysController do
  describe "routing" do

    it "routes to #index" do
      get("/filled_surveys").should route_to("filled_surveys#index")
    end

    it "routes to #new" do
      get("/filled_surveys/new").should route_to("filled_surveys#new")
    end

    it "routes to #show" do
      get("/filled_surveys/1").should route_to("filled_surveys#show", :id => "1")
    end

    it "routes to #edit" do
      get("/filled_surveys/1/edit").should route_to("filled_surveys#edit", :id => "1")
    end

    it "routes to #create" do
      post("/filled_surveys").should route_to("filled_surveys#create")
    end

    it "routes to #update" do
      put("/filled_surveys/1").should route_to("filled_surveys#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/filled_surveys/1").should route_to("filled_surveys#destroy", :id => "1")
    end

  end
end
