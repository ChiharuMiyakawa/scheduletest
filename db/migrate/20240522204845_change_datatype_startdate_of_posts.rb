class ChangeDatatypeStartdateOfPosts < ActiveRecord::Migration[6.1]
  def change
    change_column :posts, :start_date, :date
  end
end
