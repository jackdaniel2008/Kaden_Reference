class AddCategoryToGenres < ActiveRecord::Migration[6.1]
  def change
    add_column :genres, :category, :string
  end
end
