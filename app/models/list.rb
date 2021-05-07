class List < ApplicationRecord
  belongs_to :user
  has_one_attached :picture
  has_many :bookmarks
  has_many :movies, through: :bookmarks, dependent: :destroy
  has_many :list_reviews, dependent: :destroy
  validates :name, uniqueness: true, presence: true
  validates :picture, presence: :true
end
