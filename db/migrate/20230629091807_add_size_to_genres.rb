class AddSizeToGenres < ActiveRecord::Migration[6.1]
  def change
    add_column :genres, :size, :string
  end
end
