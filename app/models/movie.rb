class Movie < ApplicationRecord
  has_many :bookmarks
  validates :title, :overview, presence: true

  # belongs_to :lists, through: :bookmarks
end
