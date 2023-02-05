class CreateToursTable < ActiveRecord::Migration[6.1]
  def change
    create_table :tours do |t|
      t.string :destination_name
      t.string :description
      t.integer :duration
      t.float :price
      t.timestamps
    end
  end
end
