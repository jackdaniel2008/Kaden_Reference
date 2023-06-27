class Genre < ApplicationRecord
  has_many :genre_tags, dependent: :destroy
  has_many :items, through: :genre_tags, dependent: :destroy
end