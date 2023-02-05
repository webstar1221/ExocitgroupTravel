class RenameAdminCountriesTable < ActiveRecord::Migration[6.1]
  def change
    rename_table :admin_countries, :countries
  end
end
