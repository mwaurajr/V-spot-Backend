class CreateClients < ActiveRecord::Migration[7.0]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :username
      t.integer :age
      t.string :phoneNumber
      t.string :email
      t.string :address
      t.string :password_digest
      # t.belongs_to :booking, null: false, foreign_key: true

      t.timestamps
    end
  end
end
