class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :login
      t.string :persistence_token
      t.string :crypted_password
      t.string :password_salt
      t.datetime :last_login_at

      t.timestamps
    end
  end
end
