class MobileUser < ActiveRecord::Migration[5.1]
  def change 
    create_table :mobile_users do |t|
      t.string :email
      t.string :username
      t.string :password
      t.integer :rails_driver_id_int
      t.string :rails_driver_id_string
      t.decimal :rate
      t.string :note
      t.integer :driver_user_id       
      t.timestamps
    end
  end
end
