class RecipesController < ApplicationController
    skip_before_action :authenticate_user

    def index
        @recipes = Recipe.all.order(:name)
    end

    def show
        @recipe = Recipe.find(params[:id])
    end
end
