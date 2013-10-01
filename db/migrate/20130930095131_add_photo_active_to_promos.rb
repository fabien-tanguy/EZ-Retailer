class AddPhotoActiveToPromos < ActiveRecord::Migration
  def change
    add_column :promos, :photo_active, :boolean, :default => false
  end
end
