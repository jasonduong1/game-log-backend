class Library < ApplicationRecord
  # validates :rating, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 10, only_integer: true }
  validates :user_id, presence: true
  # validates :game_id, presence: true

  belongs_to :user
end
