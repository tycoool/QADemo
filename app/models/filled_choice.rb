class FilledChoice < ActiveRecord::Base
  belongs_to :filled_question
  validates :selected, presence: true, if: :completed?
  def completed?
    if self.new_record?
      false
    else
     filled_question.filled_survey.completed?
    end
  end
end
