class CreateFocusPhotosJoinTable < ActiveRecord::Migration
  def change
    create_table :focus_photos, id: false do |t|
      t.integer :focu_id
      t.integer :photo_id
    end
  end
end