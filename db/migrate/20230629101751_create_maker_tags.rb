class CreateMakerTags < ActiveRecord::Migration[6.1]
  def change
    create_table :maker_tags do |t|
      t.references :item, null: false, foreign_key: true
      t.references :maker, null: false, foreign_key: true

      t.timestamps
    end
  end
end
