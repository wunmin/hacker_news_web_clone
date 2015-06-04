class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |user|
      user.string :username
      user.string :password
      user.string :name
      user.string :email
      user.date :dob
      user.timestamps
    end
  end
end
