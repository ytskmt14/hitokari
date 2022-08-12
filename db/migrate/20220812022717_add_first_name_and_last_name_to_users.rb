class AddFirstNameAndLastNameToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :first_name, :string, null: false, comment: "名前（名）"
    add_column :users, :last_name, :string, null: false, comment: "名前（姓）"
  end
end
