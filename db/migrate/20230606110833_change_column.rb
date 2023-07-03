class ChangeColumn < ActiveRecord::Migration[7.0]
  def up
   change_column :products, :part_number, :text
    # rename_column :products, :part_number, :pt_no
  end
 
  def down
    change_column :products, :part_number, :string
  end
end
