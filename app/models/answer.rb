class Answer < ActiveRecord::Base
  belongs_to :question
  validates :score, :inclusion => { in: 1..10 }
end
