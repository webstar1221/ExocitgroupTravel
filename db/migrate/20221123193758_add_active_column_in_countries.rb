class AddActiveColumnInCountries < ActiveRecord::Migration[6.1]
  def change
    add_column :countries, :active, :boolean, default: :true
  end
end
