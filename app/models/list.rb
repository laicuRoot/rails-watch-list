class List < ApplicationRecord
  has_one_attached :picture
  has_many :bookmarks
  has_many :movies, through: :bookmarks, dependent: :destroy
  has_many :list_reviews
  validates :name, uniqueness: true, presence: true
end
