class AddUserIdToUserJoinDate < ActiveRecord::Migration[6.1]
  def change
    add_column :user_join_dates, :user_id, :integer
  end
end
