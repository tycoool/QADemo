require 'spec_helper'

describe "filled_surveys/show" do
  before(:each) do
    @filled_survey = assign(:filled_survey, stub_model(FilledSurvey,
      :survey_id => 1,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Name/)
  end
end
