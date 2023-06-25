class RemoveCategoryIdFromGenres < ActiveRecord::Migration[6.1]
  def change
    remove_column :genres, :category_id, :integer
  end
end
