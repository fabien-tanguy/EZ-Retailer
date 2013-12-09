class DropActivities < ActiveRecord::Migration
  def change
    drop_table :activities do |t|
      remove_column :description
    end  
  end
end
