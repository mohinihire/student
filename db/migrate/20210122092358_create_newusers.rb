class CreateNewusers < ActiveRecord::Migration[6.0]
  def change
    create_table :newusers do |t|
      t.string :name
      t.bigint :mobile
      t.string :email
      t.string :password_digest
      t.string :address

      t.timestamps
    end
    add_index :newusers, :email, unique: true
  end
end
