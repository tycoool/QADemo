class AddCompletedToFilledSurvey < ActiveRecord::Migration
  def change
    add_column :filled_surveys, :completed, :boolean
  end
end
