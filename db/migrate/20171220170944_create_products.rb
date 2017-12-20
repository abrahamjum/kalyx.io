class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :SKU
      t.decimal :price
      t.text :description
      t.integer :quantity
      t.string :brand

      t.timestamps
    end
  end
end
