class CreateAvailableTimes < ActiveRecord::Migration
  def change
    create_table :available_times do |t|
      t.references :student
      t.references :day
      t.references :semester
      t.time :start_time
      t.time :end_time

      t.timestamps
    end
    add_index :available_times, ["semester_id", "day_id", "student_id"]
  end
end
