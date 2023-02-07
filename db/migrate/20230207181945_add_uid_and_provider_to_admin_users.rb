class AddUidAndProviderToAdminUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :admin_users, :uid, :string
    add_column :admin_users, :provider, :string
  end
end
