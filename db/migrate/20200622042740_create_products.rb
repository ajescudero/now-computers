class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.date :release_date
      t.string :category_id
      t.references :store, foreign_key: true
      t.decimal :price, precision: 7, scale: 2

      t.timestamps
    end
  end
end
