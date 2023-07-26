class CreateSizeTags < ActiveRecord::Migration[6.1]
  def change
    create_table :size_tags do |t|

      t.bigint :item_id, null: false
      t.bigint :size_id, null: false

      t.timestamps
    end
  end
end
