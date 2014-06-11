class CreateFilledQuestions < ActiveRecord::Migration
  def change
    create_table :filled_questions do |t|
      t.integer :filled_survey_id
      t.string :content

      t.timestamps
    end
  end
end
