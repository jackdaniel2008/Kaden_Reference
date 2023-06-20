class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|

      t.timestamps
      t.integer :customer_id, null: false
      t.integer :item_id, null: false
      t.text :body, null: false
    end
  end
end
