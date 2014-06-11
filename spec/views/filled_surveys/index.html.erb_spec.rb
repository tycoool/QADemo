require 'spec_helper'

describe "filled_surveys/index" do
  before(:each) do
    assign(:filled_surveys, [
      stub_model(FilledSurvey,
        :survey_id => 1,
        :name => "Name"
      ),
      stub_model(FilledSurvey,
        :survey_id => 1,
        :name => "Name"
      )
    ])
  end

  it "renders a list of filled_surveys" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
