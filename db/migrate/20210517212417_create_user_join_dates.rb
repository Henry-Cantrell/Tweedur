class CreateUserJoinDates < ActiveRecord::Migration[6.1]
  def change
    create_table :user_join_dates do |t|

      t.timestamps
    end
  end
end
