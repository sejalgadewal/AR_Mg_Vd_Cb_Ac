class AddConstraints < ActiveRecord::Migration[7.0]
  add_check_constraint :users, "age < 30", name: "age_check"
end
