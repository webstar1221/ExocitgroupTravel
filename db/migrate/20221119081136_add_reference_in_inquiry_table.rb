class AddReferenceInInquiryTable < ActiveRecord::Migration[6.1]
  def change
    add_reference:inquiries, :tours, foreign_key: true
  end
end
