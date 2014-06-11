class FilledSurveysController < ApplicationController
  before_action :set_filled_survey, only: [:show, :edit, :update, :destroy]

  # GET /filled_surveys
  def index
    @filled_surveys = FilledSurvey.all
  end

  # GET /filled_surveys/1
  def show
  end

  # GET /filled_surveys/new
  def new
    @filled_survey = FilledSurvey.new
  end

  # GET /filled_surveys/1/edit
  def edit
  end

  # POST /filled_surveys
  def create
    @filled_survey = FilledSurvey.new(filled_survey_params)

    if @filled_survey.save
      redirect_to @filled_survey, notice: 'Filled survey was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /filled_surveys/1
  def update
    if @filled_survey.update(filled_survey_params)
      if params[:commit] == "Complete"
        @filled_survey.completed = true
        @filled_survey.save
        redirect_to root_path, notice: 'Filled survey was successfully completed.'
      else
        redirect_to @filled_survey, notice: 'Filled survey was successfully updated.'
      end
    else
      render :edit
    end
  end

  # DELETE /filled_surveys/1
  def destroy
    @filled_survey.destroy
    redirect_to filled_surveys_url, notice: 'Filled survey was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_filled_survey
      @filled_survey = FilledSurvey.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def filled_survey_params
      params.require(:filled_survey).permit(:survey_id, :name, filled_questions_attributes: [:id, filled_choice_attributes: [:id, :selected]] )
    end
end
