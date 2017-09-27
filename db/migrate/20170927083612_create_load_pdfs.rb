class CreateLoadPdfs < ActiveRecord::Migration[5.1]
  def change
    create_table :load_pdfs do |t|
      t.text :html
      t.integer :load_id

      t.timestamps
    end
  end
end
