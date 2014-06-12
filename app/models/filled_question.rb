class FilledQuestion < ActiveRecord::Base
  belongs_to :filled_survey
  has_many :filled_answers, :dependent => :destroy, autosave: true
  has_one :filled_choice 
  accepts_nested_attributes_for :filled_choice
  validates_associated :filled_choice

end
