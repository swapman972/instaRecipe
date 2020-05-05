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
        @new_recipe = NewRecipe.create(new_recipe_params)
        redirect_to new_recipe_path(@new_recipe.id)
    end

    def edit
        @new_recipe = NewRecipe.find(params[:id])
    end

    def update
        @new_recipe = NewRecipe.find(params[:id])
        @new_recipe.update(new_recipe_params)
        redirect_to new_new_recipe_path
    end

    def destroy
        @new_recipe = NewRecipe.find(params[:id])
        @new_recipe.destroy
        redirect_to new_recipes_path
    end

    private 

    def new_recipe_params 
        params.require(:new_recipe).permit(:name, :type, :picture, :instructions, :user_id)
    end 
end
