class GenreTag < ApplicationRecord
  belongs_to :item
  belongs_to :genre
end
