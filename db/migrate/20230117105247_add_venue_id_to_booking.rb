class AddVenueIdToBooking < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :venue_id, :integer
  end
end
