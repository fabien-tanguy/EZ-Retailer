class AddPhotoActiveToFocus < ActiveRecord::Migration
  def change
    add_column :focus, :photo_active, :boolean, :default => false
  end
end