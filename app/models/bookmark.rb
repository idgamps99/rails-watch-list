class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates_associated :movie
  validates_associated :list
  validates_uniqueness_of :movie_id, :scope => [:list_id]
  validates :comment, presence: true
  validates :comment, length: { minimum: 6 }
end
