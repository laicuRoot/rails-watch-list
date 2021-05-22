class Movie < ApplicationRecord
  has_many :bookmarks
  has_many :reviews
end
