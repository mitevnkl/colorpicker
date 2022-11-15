class Color < ApplicationRecord
  validates :name, presence: true
  validates :hex, presence: true
  # name shouldnt be longer than 20 characters
  validates :name, length: { maximum: 20 }
  # name cannot be an empty string
  validates :name, length: { minimum: 1 }
end
