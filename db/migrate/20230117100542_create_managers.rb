class CreateManagers < ActiveRecord::Migration[7.0]
  def change
    create_table :managers do |t|
      t.string :name
      t.string :username
      t.string :phoneNumber
      t.string :email
      t.string :address
      t.string :password_digest
      t.integer :age
      


      t.timestamps
    end
  end
end
