class CreateClients < ActiveRecord::Migration[7.0]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :username
      t.integer :age
      t.string :address
      t.string :phoneNumber
      t.string :email
      t.string :password_digest


      t.timestamps
    end
  end
end
