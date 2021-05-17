class AddDescriptionToBio < ActiveRecord::Migration[6.1]
  def change
    add_column :user_bios, :description, :text
  end
end
