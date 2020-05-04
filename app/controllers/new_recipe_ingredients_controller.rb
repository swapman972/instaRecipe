class NewRecipeIngredientsController < ApplicationController
    def index
        @recipes = NewRecipe.all
    end

    def show
        @recipe = NewRecipe.find(params[:id])
    end

    def new 
    end 

    def create 
    end 

    private 

    def new_recipe_params 
        params.require(:new_recipe).permit(:name, :type, :picture, :instructions, :user_id)
    end 
end
