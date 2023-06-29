class People < ApplicationRecord
  has_many :people_tags, dependent: :destroy
  has_many :items, through: :people_tags, dependent: :destroy
end
