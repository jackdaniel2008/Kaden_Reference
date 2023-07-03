class RemoveTagFromGenres < ActiveRecord::Migration[6.1]
  def change
    remove_column :genres, :tag, :string
  end
end
