class CreateFilledSurveys < ActiveRecord::Migration
  def change
    create_table :filled_surveys do |t|
      t.integer :survey_id
      t.string :name

      t.timestamps
    end
  end
end
