class AddNameColumnInCountriesTable < ActiveRecord::Migration[6.1]
  def change
    add_column :countries, :name, :string
  end
end
