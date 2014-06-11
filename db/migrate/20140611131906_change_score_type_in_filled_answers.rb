class ChangeScoreTypeInFilledAnswers < ActiveRecord::Migration
  def up
    change_column :filled_answers, :score, 'integer USING CAST(score AS integer)'

  end
  def down
    change_column :filled_answers, :score, :string
  end
end
