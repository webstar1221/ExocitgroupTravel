class AddReferenceInCountries < ActiveRecord::Migration[6.1]
  def change
    add_reference:countries, :region, foreign_key: true
  end
end
