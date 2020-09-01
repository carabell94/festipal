class Review < ApplicationRecord
  belongs_to :user
  belongs_to :festival
  has_many_attached :photos
end
