class RecipeIngredient < ApplicationRecord
    belongs_to :ingredient 
    belongs_to :recipe, optional: true 
    belongs_to :new_recipe, optional: true 
end
