require 'spec_helper'

describe "FilledSurveys" do
  describe "GET /filled_surveys" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get filled_surveys_path
      response.status.should be(200)
    end
  end
end
