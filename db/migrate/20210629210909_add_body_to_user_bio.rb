class AddBodyToUserBio < ActiveRecord::Migration[6.1]
  def change
    add_column :user_bios, :body, :string
  end
end
