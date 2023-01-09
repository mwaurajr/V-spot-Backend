class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.string :startDate
      t.string :endDate
      t.integer :num_of_guests

      t.timestamps
    end
  end
end
