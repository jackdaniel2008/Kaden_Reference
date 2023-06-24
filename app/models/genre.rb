class Genre < ApplicationRecord
  has_many :items, dependent: :destroy
  belongs_to :category
end
