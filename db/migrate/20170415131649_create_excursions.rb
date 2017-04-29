class CreateExcursions < ActiveRecord::Migration
  def change
    create_table :excursions do |t|
      t.float :price, null: false, scale: 2
      t.text :describe, null: false
      t.string :name, null: false
      t.references :city, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
