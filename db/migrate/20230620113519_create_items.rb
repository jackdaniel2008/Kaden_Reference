class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|

      t.timestamps
      t.string :name, null: false
      t.text :introduction, null: false
      t.integer :genre_id, null: false
    end
  end
end
