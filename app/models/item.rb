class Item < ApplicationRecord
  has_one_attached :image

  has_many :reviews, dependent: :destroy
  belongs_to :genre
end
