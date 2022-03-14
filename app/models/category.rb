class Category < ApplicationRecord
  # Direct associations

  has_many   :products,
             foreign_key: "product_type_id",
             dependent: :destroy

  # Indirect associations

  has_many   :bookmarks,
             through: :products,
             source: :bookmarks

  # Validations

  validates :category_type, uniqueness: true

  validates :category_type, presence: true

  # Scopes

  def to_s
    category_type
  end
end
