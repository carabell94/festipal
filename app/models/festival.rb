class Festival < ApplicationRecord
  has_many :schedules, through: :stages
  has_many :stages
end
