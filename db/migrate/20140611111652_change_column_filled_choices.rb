class ChangeColumnFilledChoices < ActiveRecord::Migration
  def change
    remove_column :filled_choices, :filled_answer_id, :integer
    remove_column :filled_choices, :selected, :boolead
    add_column :filled_choices, :filled_question_id, :integer
    add_column :filled_choices, :selected, :integer
  end
end
