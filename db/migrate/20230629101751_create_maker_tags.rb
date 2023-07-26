class CreateMakerTags < ActiveRecord::Migration[6.1]
  def change
    create_table :maker_tags do |t|
      
      t.bigint :item_id, null: false
      t.bigint :maker_id, null: false

      t.timestamps
    end
  end
end
