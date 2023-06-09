class CreatePeopleTags < ActiveRecord::Migration[6.1]
  def change
    create_table :people_tags do |t|
      t.references :item, null: false, foreign_key: true
      t.references :people, null: false, foreign_key: true

      t.timestamps
    end
  end
end
