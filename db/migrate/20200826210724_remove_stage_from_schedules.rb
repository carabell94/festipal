class RemoveStageFromSchedules < ActiveRecord::Migration[6.0]
  def change
    remove_column :schedules, :stage, :string
  end
end
