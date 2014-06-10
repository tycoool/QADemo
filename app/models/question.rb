class Question < ActiveRecord::Base
  belongs_to :survey
  has_many :answers, :dependent => :destroy
  accepts_nested_attributes_for :answers, :reject_if => proc { |a| a[:content].blank? }, :allow_destroy => true
end
