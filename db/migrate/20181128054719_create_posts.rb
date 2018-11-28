class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :report_status
      t.string :ambulance_status
      t.string :fire_fighting_status
      t.string :address
      t.string :lat
      t.string :lng
      t.string :post_user_id

      t.timestamps
    end
  end
end
