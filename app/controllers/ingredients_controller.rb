class IngredientsController < ApplicationController
    def index 
        @ingredients = Ingredient.all 
    end 

    def show 
        @ingredient = Ingredient.find(params[:id])
    end 

    def new 
        @ingredient = Ingredient.new 
    end 

    def create 
        @ingredient = Ingredient.create(ingredient_params)
    end 
  
    private 

    def ingredient_params
        params.require(:ingredient).require(:name)
    end 
end
