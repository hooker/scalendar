class ScheduledTime < ActiveRecord::Base
  belongs_to :student
  belongs_to :available_time
  belongs_to :day
  belongs_to :semester
end
