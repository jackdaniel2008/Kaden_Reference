class RemoveSizeFromGenres < ActiveRecord::Migration[6.1]
  def change
    remove_column :genres, :size, :string
  end
end
