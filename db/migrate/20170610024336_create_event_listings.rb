class CreateEventListings < ActiveRecord::Migration[5.0]
  def change
    create_table :event_listings do |t|
      t.string :event_name
      t.string :event_type
      t.date :event_date
      t.integer :location_id
      t.string :event_description
      t.integer :creator_id

      t.timestamps

    end
  end
end
