require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe FilledSurveysController do

  # This should return the minimal set of attributes required to create a valid
  # FilledSurvey. As you add validations to FilledSurvey, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { { "survey_id" => "1" } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # FilledSurveysController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all filled_surveys as @filled_surveys" do
      filled_survey = FilledSurvey.create! valid_attributes
      get :index, {}, valid_session
      assigns(:filled_surveys).should eq([filled_survey])
    end
  end

  describe "GET show" do
    it "assigns the requested filled_survey as @filled_survey" do
      filled_survey = FilledSurvey.create! valid_attributes
      get :show, {:id => filled_survey.to_param}, valid_session
      assigns(:filled_survey).should eq(filled_survey)
    end
  end

  describe "GET new" do
    it "assigns a new filled_survey as @filled_survey" do
      get :new, {}, valid_session
      assigns(:filled_survey).should be_a_new(FilledSurvey)
    end
  end

  describe "GET edit" do
    it "assigns the requested filled_survey as @filled_survey" do
      filled_survey = FilledSurvey.create! valid_attributes
      get :edit, {:id => filled_survey.to_param}, valid_session
      assigns(:filled_survey).should eq(filled_survey)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new FilledSurvey" do
        expect {
          post :create, {:filled_survey => valid_attributes}, valid_session
        }.to change(FilledSurvey, :count).by(1)
      end

      it "assigns a newly created filled_survey as @filled_survey" do
        post :create, {:filled_survey => valid_attributes}, valid_session
        assigns(:filled_survey).should be_a(FilledSurvey)
        assigns(:filled_survey).should be_persisted
      end

      it "redirects to the created filled_survey" do
        post :create, {:filled_survey => valid_attributes}, valid_session
        response.should redirect_to(FilledSurvey.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved filled_survey as @filled_survey" do
        # Trigger the behavior that occurs when invalid params are submitted
        FilledSurvey.any_instance.stub(:save).and_return(false)
        post :create, {:filled_survey => { "survey_id" => "invalid value" }}, valid_session
        assigns(:filled_survey).should be_a_new(FilledSurvey)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        FilledSurvey.any_instance.stub(:save).and_return(false)
        post :create, {:filled_survey => { "survey_id" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested filled_survey" do
        filled_survey = FilledSurvey.create! valid_attributes
        # Assuming there are no other filled_surveys in the database, this
        # specifies that the FilledSurvey created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        FilledSurvey.any_instance.should_receive(:update).with({ "survey_id" => "1" })
        put :update, {:id => filled_survey.to_param, :filled_survey => { "survey_id" => "1" }}, valid_session
      end

      it "assigns the requested filled_survey as @filled_survey" do
        filled_survey = FilledSurvey.create! valid_attributes
        put :update, {:id => filled_survey.to_param, :filled_survey => valid_attributes}, valid_session
        assigns(:filled_survey).should eq(filled_survey)
      end

      it "redirects to the filled_survey" do
        filled_survey = FilledSurvey.create! valid_attributes
        put :update, {:id => filled_survey.to_param, :filled_survey => valid_attributes}, valid_session
        response.should redirect_to(filled_survey)
      end
    end

    describe "with invalid params" do
      it "assigns the filled_survey as @filled_survey" do
        filled_survey = FilledSurvey.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        FilledSurvey.any_instance.stub(:save).and_return(false)
        put :update, {:id => filled_survey.to_param, :filled_survey => { "survey_id" => "invalid value" }}, valid_session
        assigns(:filled_survey).should eq(filled_survey)
      end

      it "re-renders the 'edit' template" do
        filled_survey = FilledSurvey.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        FilledSurvey.any_instance.stub(:save).and_return(false)
        put :update, {:id => filled_survey.to_param, :filled_survey => { "survey_id" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested filled_survey" do
      filled_survey = FilledSurvey.create! valid_attributes
      expect {
        delete :destroy, {:id => filled_survey.to_param}, valid_session
      }.to change(FilledSurvey, :count).by(-1)
    end

    it "redirects to the filled_surveys list" do
      filled_survey = FilledSurvey.create! valid_attributes
      delete :destroy, {:id => filled_survey.to_param}, valid_session
      response.should redirect_to(filled_surveys_url)
    end
  end

end
