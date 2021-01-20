class AddUserIdToKonfe < ActiveRecord::Migration[6.1]
  def change
    add_column :konves, :user_id, :integer
    add_index :konves, :user_id
  end
end
