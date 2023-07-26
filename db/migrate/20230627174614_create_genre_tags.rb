class CreateGenreTags < ActiveRecord::Migration[6.1]
  def change
    create_table :genre_tags do |t|
      
      t.bigint :item_id, null: false
      t.bigint :genre_id, null: false

      t.timestamps
    end
  end
end
