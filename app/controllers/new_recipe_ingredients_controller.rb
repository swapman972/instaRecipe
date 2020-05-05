class NewRecipeIngredientsController < ApplicationController
    def new
        @recipe_ingredient = RecipeIngredient.new
    end

    def create
        @recipe_ingredient = RecipeIngredient.create(recipe_ingredient_params)
        redirect_to recipe_ingredient_path(@recipe_ingredient.id)
    end

    def edit
        @recipe_ingredient = RecipeIngredient.find(params[:id])
    end

    def update
        @recipe_ingredient = RecipeIngredient.find(params[:id])
        @recipe_ingredient.update(recipe_ingredient_params)
        redirect_to new_new_recipe_path
    end
    
    private
    def recipeingredient_params
        params.permit(:recipe_ingredient).require(:recipe_id, :ingredient_id)
    end
end
