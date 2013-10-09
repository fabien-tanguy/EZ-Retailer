# encoding: utf-8
class AddTypeOfFocusToFocus < ActiveRecord::Migration
  def change
    add_column :focus, :type_of_focus, :string, :default => "Nouveauté"
  end
end
