class Category < ApplicationRecord
  belongs_to :genre, optional: true
end
