class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.integer :Book_Id
      t.datetime :Published_At
      t.timestamps
    end
  end
end
