class Product < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :product_name, :presence => true

  validates :product_type_id, :presence => true

  # Scopes

  def to_s
    brand
  end

end
