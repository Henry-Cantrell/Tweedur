class AddDateToUserJoinDate < ActiveRecord::Migration[6.1]
  def change
    add_column :user_join_dates, :join_date, :date
  end
end
