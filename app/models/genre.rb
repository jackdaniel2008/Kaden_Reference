class Genre < ApplicationRecord

  validates :name, presence: true

  has_many :genre_tags, dependent: :destroy
  has_many :items, through: :genre_tags, dependent: :destroy
end