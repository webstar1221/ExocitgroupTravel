class CreateTokens < ActiveRecord::Migration[6.1]
  def change
    create_table :tokens do |t|
      t.text :token
      t.string :refresh_token
      t.datetime :expires_at

      t.timestamps
    end
  end
end
