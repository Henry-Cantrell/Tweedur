class AddUserIdToUserLocation < ActiveRecord::Migration[6.1]
  def change
    add_column :user_locations, :user_id, :integer
  end
end
