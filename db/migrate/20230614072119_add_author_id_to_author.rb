class AddAuthorIdToAuthor < ActiveRecord::Migration[7.0]
  def change
    add_column :authors, :Author_Id, :integer
  end
end
