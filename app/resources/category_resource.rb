class CategoryResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :category_type, :string

  # Direct associations

  has_many   :products,
             foreign_key: :product_type_id

  # Indirect associations

end
