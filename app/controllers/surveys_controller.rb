class SurveysController < ApplicationController
  before_action :set_survey, only: [:show, :edit, :update, :destroy, :fill]

  # GET /surveys
  def index
    @surveys = Survey.all
  end

  # GET /surveys/1
  def show
  end

  # GET /surveys/new
  def new
    @survey = Survey.new
  end

  # GET /surveys/1/edit
  def edit
  end

  # POST /surveys
  def create
    @survey = Survey.new(survey_params)

    if @survey.save
      redirect_to @survey, notice: 'Survey was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /surveys/1
  def update
    if @survey.update(survey_params)
      redirect_to @survey, notice: 'Survey was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /surveys/1
  def destroy
    @survey.destroy
    redirect_to surveys_url, notice: 'Survey was successfully destroyed.'
  end

  def fill
    # TODO check if current user has to fill tha last version, or some older
    if @survey.filled_surveys.empty?
      filled_survey = @survey.filled_surveys.create
    elsif @survey.filled_surveys.uncompleted.empty?
      # all are completed
      filled_survey = @survey.filled_surveys.create
    else
      # we have some uncompleted
      filled_survey = @survey.filled_surveys.uncompleted.first
    end
    redirect_to edit_filled_survey_path(filled_survey)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_survey
      @survey = Survey.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def survey_params
      params.require(:survey).permit(:name, questions_attributes: [:id, :content, :_destroy, answers_attributes: [:id, :score, :content, :_destroy]] )
    end
end
