class Item < ApplicationRecord
  has_one_attached :image

  has_many :reviews, dependent: :destroy
  has_many :genre_tags, dependent: :destroy
  has_many :genres, through: :genre_tags, dependent: :destroy

  has_many :size_tags, dependent: :destroy
  has_many :sizes, through: :size_tags, dependent: :destroy

  has_many :people_tags, dependent: :destroy
  has_many :peoples, through: :people_tags, dependent: :destroy

  has_many :maker_tags, dependent: :destroy
  has_many :makers, through: :maker_tags, dependent: :destroy
end
