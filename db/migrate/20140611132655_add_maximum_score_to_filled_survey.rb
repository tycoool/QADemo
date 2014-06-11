class AddMaximumScoreToFilledSurvey < ActiveRecord::Migration
  def change
    add_column :filled_surveys, :maximum_score, :integer
  end
end
