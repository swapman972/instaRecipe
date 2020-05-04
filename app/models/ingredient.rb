class Ingredient < ApplicationRecord
    has_many :recipe_ingredient 
    has_many :recipe, through: :recipe_ingredient
    has_many :new_recipe, through: :recipe_ingredient
end
