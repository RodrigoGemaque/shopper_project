class CreateProductVariants < ActiveRecord::Migration[6.1]
  def change
    create_table :product_variants do |t|
      t.string :title, null: false
      t.decimal :price, null: false, precision: 15, scale: 2
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
