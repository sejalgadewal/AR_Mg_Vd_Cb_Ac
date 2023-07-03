class RenameColumn < ActiveRecord::Migration[7.0]
  def change
    rename_column :products, :part_number, :pt_no
  end
end
