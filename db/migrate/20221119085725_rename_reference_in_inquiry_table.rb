class RenameReferenceInInquiryTable < ActiveRecord::Migration[6.1]
  def change
    rename_column :inquiries, :tours_id, :tour_id
  end
end
