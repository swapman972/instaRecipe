class RecipesController < ApplicationController
    skip_before_action :authenticate_user

    def index
        @recipes = Recipe.all.order(:name)
    end

    def show
        @recipe = Recipe.find(params[:id])
        @recipe[:instructions] = correct_string(@recipe.instructions)
    end

    private
    def correct_string(string)
        string.gsub!("<li>", "")
        string.gsub!("</li>", " ")
        string.gsub!("<ol>", "")
        string.gsub!("</ol>", "")
        string
    end
end
