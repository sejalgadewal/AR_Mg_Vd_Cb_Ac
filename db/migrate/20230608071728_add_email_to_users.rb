class AddEmailToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :email, :text
  end
    def up
      change_table :products do |t|
        t.change :price, :string ,comment: "this is price"
      end
    end
  
    def down
      change_table :products do |t|
        t.change :price, :integer
      end
    end
end
