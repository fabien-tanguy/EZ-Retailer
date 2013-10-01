class AddActiveToPromos < ActiveRecord::Migration
  def change
    add_column :promos, :active, :boolean, :default => false
  end
end
