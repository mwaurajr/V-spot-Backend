class CreateVenues < ActiveRecord::Migration[7.0]
  def change
    create_table :venues do |t|
      t.string :description
      t.string :location
      t.integer :capacity
      t.integer :price
      t.string :imageUrl
      

      t.timestamps
    end
  end
end
