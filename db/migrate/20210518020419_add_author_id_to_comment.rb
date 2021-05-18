class AddAuthorIdToComment < ActiveRecord::Migration[6.1]
  def change
    add_column :comments, :author_id, :integer
  end
end
