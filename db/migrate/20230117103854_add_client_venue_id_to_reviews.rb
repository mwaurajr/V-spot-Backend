class AddClientVenueIdToReviews < ActiveRecord::Migration[7.0]
  def change
    add_column :reviews, :client_id, :integer
    add_column :reviews, :venue_id, :integer
  end
end
