class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.string :description
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :phone
      t.string :email
      t.string :profile_picture
      t.integer :category_id

      t.timestamps
    end
  end
end
