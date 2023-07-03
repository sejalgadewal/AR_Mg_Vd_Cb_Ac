class ChangeColumnTypeUser < ActiveRecord::Migration[7.0]
  def up
    change_column :users, :name, :string
   end
  
   def down
     change_column :users, :name, :integer
   end
end
