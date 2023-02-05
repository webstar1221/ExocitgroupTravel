class AddTripIdeaInTours < ActiveRecord::Migration[6.1]
  def change
    add_reference :tours, :trip_idea, foreign_key: true
  end
end
