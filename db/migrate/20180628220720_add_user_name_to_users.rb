class AddUserNameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :username, :string, :limit => 30
    add_column :users, :name, :string
    add_index :users, :username, unique: true
    #Ex:- add_index("admin_users", "username")
  end
end
