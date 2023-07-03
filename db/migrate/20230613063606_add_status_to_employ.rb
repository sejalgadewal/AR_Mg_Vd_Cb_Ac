class AddStatusToEmploy < ActiveRecord::Migration[7.0]
  def change
    add_column :employs, :Status, :string
  end
end
