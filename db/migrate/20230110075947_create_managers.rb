class CreateManagers < ActiveRecord::Migration[7.0]
  def change
    create_table :managers do |t|
      t.string :name
      t.string :username
      t.integer :age
      t.string :address
      t.string :phoneNumber
      t.string :email
      t.string :password_digest
    # t.belongs_to :venue, null: false, foreign_key: true

      t.timestamps
    end
  end
end
