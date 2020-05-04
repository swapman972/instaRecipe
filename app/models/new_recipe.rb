class NewRecipe < ApplicationRecord
    belongs_to :user 
    has_many :recipe_ingredient
    has_many :ingredients, through: :recipe_ingredient
end
