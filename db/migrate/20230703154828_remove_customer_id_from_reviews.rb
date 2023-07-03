class RemoveCustomerIdFromReviews < ActiveRecord::Migration[6.1]
  def change
    remove_column :reviews, :customer_id, :integer
  end
end
