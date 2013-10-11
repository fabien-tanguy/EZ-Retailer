class CreatePhotosProduitsJoinTable < ActiveRecord::Migration
  def change
    create_table :photos_produits, id: false do |t|
      t.integer :photo_id
      t.integer :produit_id
    end
  end
end
