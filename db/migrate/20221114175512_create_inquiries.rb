class CreateInquiries < ActiveRecord::Migration[6.1]
  def change
    create_table :inquiries do |t|
      t.integer :title
      t.string :first_name
      t.string :last_name
      t.string :user_type
      t.string :country
      t.string :phone
      t.string :email
      t.integer :contact_method
      t.integer :no_of_passenger
      t.string :departure_date
      t.string :description
      t.timestamps
    end
  end
end
