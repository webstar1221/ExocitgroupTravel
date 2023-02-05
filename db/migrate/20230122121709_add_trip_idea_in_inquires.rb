class AddTripIdeaInInquires < ActiveRecord::Migration[6.1]
  def change
    add_reference :inquiries, :trip_idea, foreign_key: true
  end
end
