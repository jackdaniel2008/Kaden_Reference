class MakerTag < ApplicationRecord
  belongs_to :item
  belongs_to :maker
end
