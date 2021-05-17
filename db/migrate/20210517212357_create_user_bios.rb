class CreateUserBios < ActiveRecord::Migration[6.1]
  def change
    create_table :user_bios do |t|

      t.timestamps
    end
  end
end
