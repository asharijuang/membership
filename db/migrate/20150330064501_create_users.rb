class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email, unique: true
      t.text :password_digest
      t.boolean :email_confirmation
      t.string :remember_token
      t.string :password_reset_token
      t.datetime :password_sent_at

      t.timestamps null: false
    end
  end
end
