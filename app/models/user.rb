class User < ApplicationRecord
  # Direct associations

  has_many   :bookmarks,
             dependent: :destroy

  has_many   :links,
             class_name: "Product",
             foreign_key: "creator_id",
             dependent: :destroy

  # Indirect associations

  # Validations

  validates :password, presence: true

  # Scopes

  def to_s
    username
  end
end
