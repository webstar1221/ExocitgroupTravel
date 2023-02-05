class CreateCountriesTable < ActiveRecord::Migration[6.1]
  def change
    create_table :countries_tables do |t|
      t.string :name
      t.boolean :active
      t.timestamps
    end
  end
end
