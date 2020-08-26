class AddStageToSchedules < ActiveRecord::Migration[6.0]
  def change
    add_reference :schedules, :stage, null: false, foreign_key: true
  end
end
