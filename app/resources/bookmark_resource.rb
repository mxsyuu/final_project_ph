class BookmarkResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :product_id, :integer
  attribute :category_id, :integer
  attribute :user_id, :integer

  # Direct associations

  belongs_to :product

  belongs_to :user

  # Indirect associations

  has_one    :product_type,
             resource: CategoryResource

  filter :product_type_id, :integer do
    eq do |scope, value|
      scope.eager_load(:product_type).where(:products => {:product_type_id => value})
    end
  end
end
