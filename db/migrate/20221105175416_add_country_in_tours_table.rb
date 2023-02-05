class AddCountryInToursTable < ActiveRecord::Migration[6.1]
  def change
    add_reference :tours, :country, foreign_key: true
  end
end
