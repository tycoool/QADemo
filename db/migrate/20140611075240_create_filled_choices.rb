class CreateFilledChoices < ActiveRecord::Migration
  def change
    create_table :filled_choices do |t|
      t.integer :filled_answer_id
      t.boolean :selected

      t.timestamps
    end
  end
end
