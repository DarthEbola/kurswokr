class CreateTroutes < ActiveRecord::Migration
  def change
    create_table :troutes do |t|
      t.string :name, null: false
      t.text :describe, null: false
      t.float :price, null: false, scale: 2
      t.references :city, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
