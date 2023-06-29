class AddNameToMakers < ActiveRecord::Migration[6.1]
  def change
    add_column :makers, :name, :string
  end
end
