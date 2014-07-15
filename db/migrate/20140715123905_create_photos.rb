class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :attraction_id
      t.string :picture

      t.timestamps
    end
  end
end
