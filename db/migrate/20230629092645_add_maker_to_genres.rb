class AddMakerToGenres < ActiveRecord::Migration[6.1]
  def change
    add_column :genres, :maker, :string
  end
end
