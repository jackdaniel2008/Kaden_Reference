class RemovePeopleFromGenres < ActiveRecord::Migration[6.1]
  def change
    remove_column :genres, :people, :string
  end
end
