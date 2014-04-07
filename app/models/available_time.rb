class AvailableTime < ActiveRecord::Base
  belongs_to :student
  belongs_to :day
  belongs_to :semester
  has_many :scheduled_times, dependent: :destroy
end
