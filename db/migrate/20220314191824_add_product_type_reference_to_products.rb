class AddProductTypeReferenceToProducts < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :products, :categories, column: :product_type_id
    add_index :products, :product_type_id
  end
end
