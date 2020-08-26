class RemoveFestivalFromSchedules < ActiveRecord::Migration[6.0]
  def change
    remove_reference :schedules, :festival, null: false, foreign_key: true
  end
end
