class CreateScheduledTimes < ActiveRecord::Migration
  def change
  create_table :scheduled_times do |t|
      t.references :student
      t.references :available_time
      t.references :day
      t.references :semester
      t.time :start_time
      t.time :end_time

      t.timestamps
    end
   add_index :scheduled_times, ["semester_id", "day_id", "student_id"]
   add_index :scheduled_times, :available_time_id
  end
end
