class AddCategoryIdToGenres < ActiveRecord::Migration[6.1]
  def change
    add_column :genres, :category_id, :integer
  end
end
