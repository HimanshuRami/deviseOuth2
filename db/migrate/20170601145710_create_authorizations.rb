class CreateAuthorizations < ActiveRecord::Migration
  def change
    create_table :authorizations do |t|
      t.references :user
      t.string :provider
      t.string :uid
      t.string :token
      t.string :secret
      t.string :username

      t.timestamps null: false
    end
  end
end
