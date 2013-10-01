class AddActiveToFocus < ActiveRecord::Migration
  def change
    add_column :focus, :active, :boolean, :default => false
  end
end
