class CreatePhotosPromosJoinTable < ActiveRecord::Migration
  def change
    create_table :photos_promos, id: false do |t|
      t.integer :photo_id
      t.integer :promo_id
    end
  end
end
