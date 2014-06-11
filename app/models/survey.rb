class Survey < ActiveRecord::Base
  has_many :filled_surveys
  has_many :questions, :dependent => :destroy
  accepts_nested_attributes_for :questions, :reject_if => proc { |a| a[:content].blank? }, :allow_destroy => true
  validates :questions, presence: true
  default_scope { order('created_at DESC')}
end
