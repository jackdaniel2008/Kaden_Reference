class Maker < ApplicationRecord
  has_many :maker_tags, dependent: :destroy
  has_many :items, through: :maker_tags, dependent: :destroy
end
