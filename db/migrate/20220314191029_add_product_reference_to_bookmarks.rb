class AddProductReferenceToBookmarks < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :bookmarks, :products
    add_index :bookmarks, :product_id
    change_column_null :bookmarks, :product_id, false
  end
end
