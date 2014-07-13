class CreateItineraries < ActiveRecord::Migration
  def change
    create_table :itineraries do |t|
      t.string :user_id
      t.string :attraction_id

      t.timestamps
    end
  end
end
