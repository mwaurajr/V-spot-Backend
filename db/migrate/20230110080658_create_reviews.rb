class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.string :description
      t.integer :ratings
      t.belongs_to :client, null: false, foreign_key: true
      # t.belongs_to :venue, null: false, foreign_key: true

      t.timestamps
    end
  end
end
