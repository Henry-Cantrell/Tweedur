class AddAcceptToggleToFollowRelationship < ActiveRecord::Migration[6.1]
  def change
    add_column :follow_relationships, :accept_toggle, :boolean
  end
end
