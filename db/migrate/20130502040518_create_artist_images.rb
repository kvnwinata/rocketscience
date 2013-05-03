class CreateArtistImages < ActiveRecord::Migration
  def change
    create_table :artist_images do |t|
      t.integer :image_id
      t.integer :artist_id
      t.integer :category_id

      t.timestamps
    end
  end
end
