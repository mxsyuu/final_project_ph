class Bookmark < ApplicationRecord
  # Direct associations

  belongs_to :user

  # Indirect associations

  # Validations

  validates :category_id, :presence => true

  validates :product_id, :presence => true

  validates :user_id, :presence => true

  # Scopes

  def to_s
    product.to_s
  end

end
