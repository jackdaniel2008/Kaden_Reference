class RemoveMakerFromGenres < ActiveRecord::Migration[6.1]
  def change
    remove_column :genres, :maker, :string
  end
end
