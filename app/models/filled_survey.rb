class FilledSurvey < ActiveRecord::Base
  has_many :filled_questions, :dependent => :destroy
  accepts_nested_attributes_for :filled_questions
end
