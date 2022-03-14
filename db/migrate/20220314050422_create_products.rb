class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :brand
      t.string :product_name
      t.float :ph_level
      t.text :description
      t.string :purchase_link
      t.string :image
      t.integer :creator_id
      t.integer :product_type_id
      t.boolean :validated_by_company

      t.timestamps
    end
  end
end
