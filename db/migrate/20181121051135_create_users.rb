class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :email_address
      t.string :screen_name
      t.string :password_digest

      t.timestamps
    end
  end
end