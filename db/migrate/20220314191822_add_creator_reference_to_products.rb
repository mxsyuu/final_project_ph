class AddCreatorReferenceToProducts < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :products, :users, column: :creator_id
    add_index :products, :creator_id
  end
end
