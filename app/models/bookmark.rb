class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates_associated :movie
  validates_associated :list
  validates :comment, presence: true
end
