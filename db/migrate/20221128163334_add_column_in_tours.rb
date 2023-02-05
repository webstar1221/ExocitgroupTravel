class AddColumnInTours < ActiveRecord::Migration[6.1]
  def change
    add_column :tours, :featured, :boolean, default: :true
  end
end
