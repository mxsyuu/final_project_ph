class Product < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :ph_level, :numericality => { :less_than_or_equal_to => 12, :greater_than_or_equal_to => 2 }

  validates :product_name, :uniqueness => { :scope => [:brand] }

  validates :product_name, :presence => true

  validates :product_type_id, :presence => true

  # Scopes

  def to_s
    brand
  end

end
