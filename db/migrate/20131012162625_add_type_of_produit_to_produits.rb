class AddTypeOfProduitToProduits < ActiveRecord::Migration
  def change
    add_column :produits, :type_of_produit, :string, :default => "Produit"
  end
end
