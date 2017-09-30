class AddFieldsToLoad < ActiveRecord::Migration[5.1]
  def change
    add_column :loads, :broker_rep_name, :string
    add_column :loads, :broker_rep_email, :string
    add_column :loads, :broker_rep_number, :string
    add_column :loads, :broker_rep_cell, :string
    add_column :loads, :broker_after_hours_instructions, :string 
    add_column :loads, :description, :string 


  end
end
