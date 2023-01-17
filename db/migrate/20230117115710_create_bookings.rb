class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.integer :start_time
      t.integer :end_time
      t.integer :no_guest
      

      t.timestamps
    end
  end
end
