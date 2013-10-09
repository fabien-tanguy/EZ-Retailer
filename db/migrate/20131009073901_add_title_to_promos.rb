class AddTitleToPromos < ActiveRecord::Migration
  def change
    add_column :promos, :title, :string
  end
end
