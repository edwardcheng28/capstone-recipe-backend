class User < ApplicationRecord
  has_many :ingredients, through: :pantry_items
end
