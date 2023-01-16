class CreateVenues < ActiveRecord::Migration[7.0]
  def change
    create_table :venues do |t|
      t.string :price
      t.string :description
      t.string :location
      t.string :capacity

      t.timestamps
    end
  end
end
