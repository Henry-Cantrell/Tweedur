class RemoveBodyFromUserBio < ActiveRecord::Migration[6.1]
  def change
    remove_column :user_bios, :body, :string
  end
end
