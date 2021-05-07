class AddUserIdToLists < ActiveRecord::Migration[6.0]
  def change
    add_column :lists, :user_id, :integer
  end
end
