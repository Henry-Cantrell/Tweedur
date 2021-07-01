class AddCommentIdToCommentLike < ActiveRecord::Migration[6.1]
  def change
    add_column :comment_likes, :comment_id, :int
  end
end
