class Bookmark < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :user_id, :presence => true

  # Scopes

  def to_s
    product.to_s
  end

end
