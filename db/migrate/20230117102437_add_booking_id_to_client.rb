class AddBookingIdToClient < ActiveRecord::Migration[7.0]
  def change
    add_column :clients, :booking_id, :integer
  end
end
