require 'spec_helper'

describe "filled_surveys/new" do
  before(:each) do
    assign(:filled_survey, stub_model(FilledSurvey,
      :survey_id => 1,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new filled_survey form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", filled_surveys_path, "post" do
      assert_select "input#filled_survey_survey_id[name=?]", "filled_survey[survey_id]"
      assert_select "input#filled_survey_name[name=?]", "filled_survey[name]"
    end
  end
end
