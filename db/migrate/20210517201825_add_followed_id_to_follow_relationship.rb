class AddFollowedIdToFollowRelationship < ActiveRecord::Migration[6.1]
  def change
    add_column :follow_relationships, :followed_id, :integer
  end
end
