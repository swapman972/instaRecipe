class NewRecipesController < ApplicationController
    def index
        @new_recipes = NewRecipe.all
    end

    def show
        @new_recipe = NewRecipe.find(params[:id])
    end

    def new
        @new_recipe = NewRecipe.new 
    end

    def create
        @new_recipe = NewRecipe.create(recipe_params)
        redirect_to new_recipe_path(@new_recipe.id)
    end

    def edit
        @new_recipe = NewRecipe.find(params[:id])
    end

    def update
        @new_recipe = NewRecipe.find(params[:id])
        @new_recipe.update(recipe_params)
        redirect_to new_recipe_path(@new_recipe.id)
    end

    private
        def recipe_params
            params.require(:new_recipe).permit(:name, :type, :picture, :instructions, :user_id)
        end
end
