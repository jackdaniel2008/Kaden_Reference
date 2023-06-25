class AddGenreIdToCategories < ActiveRecord::Migration[6.1]
  def change
    add_column :categories, :genre_id, :integer
  end
end
