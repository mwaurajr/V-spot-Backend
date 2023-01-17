class AddClientIdToVenue < ActiveRecord::Migration[7.0]
  def change
    add_column :venues, :client_id, :integer
    add_column :venues, :manager_id, :integer
  end
end
