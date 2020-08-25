class CreateSchedules < ActiveRecord::Migration[6.0]
  def change
    create_table :schedules do |t|
      t.references :festival, null: false, foreign_key: true
      t.string :day
      t.integer :start_time
      t.integer :end_time
      t.string :artist
      t.string :stage
      t.string :genre

      t.timestamps
    end
  end
end
