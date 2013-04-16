class RemoveDescriptionFromImages < ActiveRecord::Migration
  def up
    remove_column :images, :description
  end

  def down
    add_column :images, :description, :text
  end
end
