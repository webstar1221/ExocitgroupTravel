class CreateTripIdeas < ActiveRecord::Migration[6.1]
  def change
    create_table :trip_ideas do |t|
      t.string :name
      t.boolean :active

      t.timestamps
    end
  end
end
