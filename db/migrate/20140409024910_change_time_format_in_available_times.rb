class ChangeTimeFormatInAvailableTimes < ActiveRecord::Migration
  def up
  	change_column :available_times, :start_time, :integer
  	change_column :available_times, :end_time, :integer
  end
  
  def down
  	change_column :available_times, :start_time, :time
  	change_column :available_times, :end_time, :time
  end
end
