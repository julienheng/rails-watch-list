class Movie < ApplicationRecord
  has_many :bookmarks
  # belongs_to :list
  validates :overview, presence: true
  validates :title, presence: true
  validates :title, uniqueness: true
end
