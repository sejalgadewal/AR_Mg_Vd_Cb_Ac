class CreateEmploys < ActiveRecord::Migration[7.0]
  def change
    create_table :employs do |t|
      t.string :name
      t.integer :age
      t.text :email
      t.text :location

      t.timestamps
    end
  end
end
