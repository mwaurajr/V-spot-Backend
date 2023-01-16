class CreateAdmins < ActiveRecord::Migration[7.0]
  def change
    create_table :admins do |t|
      t.text :first_name
      t.text :last_name
      t.text :email, null: false, unique: true
      t.text :password_digest, null: false
      t.text :role

      t.timestamps null: false
    end

    add_index :admins, :email, unique: true
  end
end
