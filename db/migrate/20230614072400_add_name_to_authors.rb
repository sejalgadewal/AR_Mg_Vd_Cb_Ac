class AddNameToAuthors < ActiveRecord::Migration[7.0]
  def change
    add_column :authors, :Name, :string
  end
end
