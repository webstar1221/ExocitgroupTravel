class AddGoogleTokenAndGoogleRefreshTokenToAdminUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :admin_users, :gooogle_token, :string
    add_column :admin_users, :google_refresh_token, :string
  end
end
