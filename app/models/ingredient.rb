class Ingredient < ApplicationRecord
    has_many :recipe_ingredient 
    has_many :recipe, through: :recipe_ingredient
    validates :name, uniqueness: true
end
