class AddLocationToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :location, :text
  end
end
