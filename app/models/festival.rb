class Festival < ApplicationRecord
  has_many :stages
  has_many :schedules, through: :stages
end
