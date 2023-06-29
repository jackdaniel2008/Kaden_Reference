class AddPeopleToGenres < ActiveRecord::Migration[6.1]
  def change
    add_column :genres, :people, :string
  end
end
