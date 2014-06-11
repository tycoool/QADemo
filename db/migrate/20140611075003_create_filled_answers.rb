class CreateFilledAnswers < ActiveRecord::Migration
  def change
    create_table :filled_answers do |t|
      t.integer :filled_question_id
      t.string :content
      t.string :score

      t.timestamps
    end
  end
end
