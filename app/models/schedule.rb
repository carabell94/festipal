class Schedule < ApplicationRecord
  belongs_to :stage
  has_many :user_schedules
end
