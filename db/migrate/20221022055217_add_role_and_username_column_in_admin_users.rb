class AddRoleAndUsernameColumnInAdminUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :admin_users, :username, :string
    add_column :admin_users, :role, :integer
  end
end
