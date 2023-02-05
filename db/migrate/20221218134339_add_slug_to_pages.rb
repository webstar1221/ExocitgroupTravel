class AddSlugToPages < ActiveRecord::Migration[6.1]
  def change
    add_column :pages, :slug, :string
    add_index :pages, :slug, unique: true
  end
end
