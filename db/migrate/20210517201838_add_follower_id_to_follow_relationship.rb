class AddFollowerIdToFollowRelationship < ActiveRecord::Migration[6.1]
  def change
    add_column :follow_relationships, :follower_id, :integer
  end
end
