class Product < ApplicationRecord
  mount_base64_uploader :image, ImageUploader

  # Direct associations

  has_many   :bookmarks,
             dependent: :destroy

  belongs_to :product_type,
             class_name: "Category"

  belongs_to :creator,
             class_name: "User"

  # Indirect associations

  # Validations

  validates :brand, presence: true

  validates :ph_level,
            numericality: { less_than_or_equal_to: 12,
                            greater_than_or_equal_to: 2 }

  validates :product_name, uniqueness: { scope: [:brand] }

  validates :product_name, presence: true

  # Scopes

  def to_s
    product_name
  end
end
