class AddLocationToUserLocation < ActiveRecord::Migration[6.1]
  def change
    add_column :user_locations, :location, :string
  end
end
