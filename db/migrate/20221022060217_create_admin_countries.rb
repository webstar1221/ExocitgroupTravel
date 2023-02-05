class CreateAdminCountries < ActiveRecord::Migration[6.1]
  def change
    create_table :admin_countries do |t|

      t.timestamps
    end
  end
end
