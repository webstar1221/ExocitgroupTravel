class AddShortDescriptionInTours < ActiveRecord::Migration[6.1]
  def change
    add_column :tours, :short_description, :string
  end
end
