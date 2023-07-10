class Ingredient < ApplicationRecord
  has_many :users, through: :pantry_items
end
