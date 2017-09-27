class LoadToMobile < ActiveRecord::Migration[5.1]
  def change
    create_table :load_to_mobiles do |t|
      t.boolean :accept
      t.boolean :decline
      t.string :driver_email
      t.integer :driver_user_id, index: true 

      t.timestamps
   end      
  end
end
