class CreateArtistLikes < ActiveRecord::Migration
  def change
    create_table :artist_likes do |t|
      t.integer :user_id
      t.integer :artist_id

      t.timestamps
    end
  end
end
