class PeopleTag < ApplicationRecord
  belongs_to :item
  belongs_to :people
end
