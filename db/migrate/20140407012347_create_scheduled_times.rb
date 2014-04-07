class CreateScheduledTimes < ActiveRecord::Migration
  def change
    create_table :scheduled_times do |t|
      t.references :student, index: true
      t.references :available_time, index: true
      t.references :day, index: true
      t.references :semester, index: true
      t.time :start_time
      t.time :end_time

      t.timestamps
    end
  end
end
