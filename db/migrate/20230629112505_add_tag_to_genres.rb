class AddTagToGenres < ActiveRecord::Migration[6.1]
  def change
    add_column :genres, :tag, :string
  end
end
