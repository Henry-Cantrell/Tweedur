class AddLikedPostIdToLike < ActiveRecord::Migration[6.1]
  def change
    add_column :likes, :liked_post_id, :integer
  end
end
