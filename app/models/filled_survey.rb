class FilledSurvey < ActiveRecord::Base
  has_many :filled_questions, :dependent => :destroy, autosave: true
  belongs_to :survey
  accepts_nested_attributes_for :filled_questions
  after_initialize :custom_init
  validates_associated :filled_questions 

  scope :completed, -> { where(completed: true) }
  scope :uncompleted, -> { where(completed: nil) }

  def total_score
    sum = 0
    filled_questions.each do |filled_question|
      filled_answer = filled_question.filled_answers.find_by_id( filled_question.filled_choice.selected)
      if filled_answer
        sum += filled_answer.score
      end
    end
    sum
  end

  def custom_init
    # save those values since they could change
    self.name ||= survey.name
    if filled_questions.empty? 
      maximum_score = 0
      survey.questions.each do |question|
        maximum_score += question.answers.map(&:score).max
        new_filled_question = filled_questions.build :content => question.content
        question.answers.each do |answer|
          new_filled_question.filled_answers.build :content => answer.content, :score => answer.score
          new_filled_question.build_filled_choice
        end
      end
      self.maximum_score = maximum_score
    end

  end
end
