class CreateArtistCategories < ActiveRecord::Migration
  def change
    create_table :artist_categories do |t|
      t.integer :category_id
      t.integer :artist_id

      t.timestamps
    end
  end
end
