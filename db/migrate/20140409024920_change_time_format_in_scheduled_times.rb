class ChangeTimeFormatInScheduledTimes < ActiveRecord::Migration
  def up
  	change_column :scheduled_times, :start_time, :integer
  	change_column :scheduled_times, :end_time, :integer
  end
  
  def down
  	change_column :scheduled_times, :start_time, :time
  	change_column :scheduled_times, :end_time, :time
  end
end
