class User < ApplicationRecord
  # Direct associations

  has_many   :links,
             :class_name => "Product",
             :foreign_key => "creator_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    username
  end

end
