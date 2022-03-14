class Bookmark < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :product_id, :presence => true

  validates :user_id, :presence => true

  # Scopes

  def to_s
    product.to_s
  end

end
