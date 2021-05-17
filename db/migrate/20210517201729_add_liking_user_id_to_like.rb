class AddLikingUserIdToLike < ActiveRecord::Migration[6.1]
  def change
    add_column :likes, :liking_user_id, :integer
  end
end
