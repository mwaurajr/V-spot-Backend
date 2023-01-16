class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.string :start_date
      t.string :end_date
      t.string :booking_date
      t.integer :no_guest

      t.timestamps
    end
  end
end
