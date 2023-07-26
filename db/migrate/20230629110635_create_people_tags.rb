class CreatePeopleTags < ActiveRecord::Migration[6.1]
  def change
    create_table :people_tags do |t|
      
      t.bigint :item_id, null: false
      t.bigint :people_id, null: false

      t.timestamps
    end
  end
end
