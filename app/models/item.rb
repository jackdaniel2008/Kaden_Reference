class Item < ApplicationRecord
  has_one_attached :image

  has_many :reviews, dependent: :destroy
  has_many :genre_tags, dependent: :destroy
  has_many :genres, through: :genre_tags, dependent: :destroy
end
