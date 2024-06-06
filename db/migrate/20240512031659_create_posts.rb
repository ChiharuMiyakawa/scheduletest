class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :start_date
      t.string :date
      t.date :end_date
      t.boolean :all_day_existence

      t.timestamps
    end
  end
end
