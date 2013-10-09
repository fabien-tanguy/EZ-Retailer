class AddTitleToFocus < ActiveRecord::Migration
  def change
    add_column :focus, :title, :string
  end
end
