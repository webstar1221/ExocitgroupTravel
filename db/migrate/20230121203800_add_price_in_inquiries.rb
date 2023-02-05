class AddPriceInInquiries < ActiveRecord::Migration[6.1]
  def change
    add_column :inquiries, :price, :string
  end
end
