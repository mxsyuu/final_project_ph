class Category < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :category_type, :uniqueness => true

  validates :category_type, :presence => true

  # Scopes

  def to_s
    category_type
  end

end
