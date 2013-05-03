class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :name
      t.text :description
      t.string :path
      t.integer :category_id
      t.timestamps
    end
  end
end
