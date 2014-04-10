class Day < ActiveRecord::Base
	has_many :available_times
	has_many :scheduled_times
	has_many :students, :through => :available_times
	has_many :scheduled_students, :through => :scheduled_times, :source => :student
end
