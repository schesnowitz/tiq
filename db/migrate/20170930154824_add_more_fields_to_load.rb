class AddMoreFieldsToLoad < ActiveRecord::Migration[5.1]
  def change
    add_column :loads, :pounds, :decimal
    add_column :loads, :kilos, :decimal
    add_column :loads, :is_pounds, :boolean, default: false
    add_column :loads, :is_kilos, :boolean, default: false
    add_column :loads, :is_hazmat, :boolean, default: false
    add_column :loads, :is_temp_control, :boolean, default: false
    add_column :loads, :is_fahrenheit, :boolean, default: false
    add_column :loads, :is_celsius, :boolean, default: false
    add_column :loads, :fahrenheit, :decimal
    add_column :loads, :celsius, :decimal
    add_column :loads, :kilometers, :decimal
  end
end
