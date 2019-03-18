class Hall < ApplicationRecord
  belongs_to :user

  validates :room_type, presence: true
  validates :capacity, presence: true
  validates :surface, presence: true
end
