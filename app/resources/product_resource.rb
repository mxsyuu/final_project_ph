class ProductResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :brand, :string
  attribute :product_name, :string
  attribute :ph_level, :float
  attribute :description, :string
  attribute :purchase_link, :string
  attribute :image, :string
  attribute :creator_id, :integer
  attribute :product_type_id, :integer
  attribute :validated_by_company, :boolean

  # Direct associations

  has_many   :bookmarks

  belongs_to :product_type,
             resource: CategoryResource

  belongs_to :creator,
             resource: UserResource

  # Indirect associations
end
