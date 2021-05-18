class RemoveUserIdFromComment < ActiveRecord::Migration[6.1]
  def change
    remove_column :comments, :user_id, :integer
  end
end
