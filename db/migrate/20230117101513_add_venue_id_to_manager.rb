class AddVenueIdToManager < ActiveRecord::Migration[7.0]
  def change
    add_column :managers, :venue_id, :integer
  end
end
