class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :titre_menu
      t.string :titre
      t.string :photo
      t.text :description

      t.timestamps
    end
  end
end
