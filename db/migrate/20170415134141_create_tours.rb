class CreateTours < ActiveRecord::Migration
  def change
    create_table :tours do |t|
      t.datetime :departure_date
      t.text :describe
      t.integer :tour_days
      t.float :add_pay
      t.references :troute, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
