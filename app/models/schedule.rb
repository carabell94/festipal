class Schedule < ApplicationRecord
  belongs_to :festival
  has_many :user_schedules
end
