require 'spec_helper'

describe "filled_surveys/edit" do
  before(:each) do
    @filled_survey = assign(:filled_survey, stub_model(FilledSurvey,
      :survey_id => 1,
      :name => "MyString"
    ))
  end

  it "renders the edit filled_survey form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", filled_survey_path(@filled_survey), "post" do
      assert_select "input#filled_survey_survey_id[name=?]", "filled_survey[survey_id]"
      assert_select "input#filled_survey_name[name=?]", "filled_survey[name]"
    end
  end
end
