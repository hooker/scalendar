class Student < ActiveRecord::Base
	has_many :available_times
	has_many :scheduled_times
	
	has_many :days, :through => :available_times
	has_many :semesters, :through => :available_times
	
	has_many :scheduled_days, :through => :scheduled_times, :source => :day
	has_many :scheduled_semesters, :through => :scheduled_times, :source => :semester
end
