class FilledQuestion < ActiveRecord::Base
  belongs_to :filled_survey
  has_many :filled_answers, :dependent => :destroy
  accepts_nested_attributes_for :filled_answers
end
