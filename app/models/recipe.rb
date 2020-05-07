class Recipe < ApplicationRecord
    has_many :posts, dependent: :destroy
    has_many :users, through: :posts 
    has_many :recipe_ingredients,  dependent: :destroy
    has_many :ingredients, through: :recipe_ingredients
    belongs_to :cuisine
    validates :name, uniqueness: true
    belongs_to :cuisine

    
end
