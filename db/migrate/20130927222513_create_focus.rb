class CreateFocus < ActiveRecord::Migration
  def change
    create_table :focus do |t|
      t.text :description

      t.timestamps
    end
  end
end
