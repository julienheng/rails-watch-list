class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  # validates :movie, presence: true
  # validates :list
  validates :comment, presence: true, length: { minimum: 6 }
  validates :movie_id, uniqueness: { scope: :list_id }
end
