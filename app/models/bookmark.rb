class Bookmark < ApplicationRecord
  # Direct associations

  belongs_to :product

  belongs_to :user

  # Indirect associations

  has_one    :product_type,
             through: :product,
             source: :product_type

  # Validations

  validates :category_id, presence: true

  validates :product_id, presence: true

  validates :user_id, presence: true

  # Scopes

  def to_s
    product.to_s
  end
end
