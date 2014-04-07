class Day < ActiveRecord::Base
	has_many :available_times
	has_many :scheduled_times
end
