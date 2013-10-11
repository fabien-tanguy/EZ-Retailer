class CreateProduits < ActiveRecord::Migration
  def change
    create_table :produits do |t|
      t.string :titre
      t.text :description
      t.string :prix, :default => nil
      t.boolean :photo_active, :default => false

      t.timestamps
    end
  end
end
