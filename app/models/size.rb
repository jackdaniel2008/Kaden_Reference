class Size < ApplicationRecord
  has_many :size_tags, dependent: :destroy
  has_many :items, through: :size_tags, dependent: :destroy
end
