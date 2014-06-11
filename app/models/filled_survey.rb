class FilledSurvey < ActiveRecord::Base
  has_many :filled_questions, :dependent => :destroy, autosave: true
  belongs_to :survey
  accepts_nested_attributes_for :filled_questions
  after_initialize :custom_init
  def custom_init
    # save those values since they could change
    name ||= survey.name
    if filled_questions.empty? 
      survey.questions.each do |question|
        new_filled_question = filled_questions.build :content => question.content
        question.answers.each do |answer|
          new_filled_question.filled_answers.build :content => answer.content, :score => answer.score
          new_filled_question.build_filled_choice
        end
      end
    end

  end
end
