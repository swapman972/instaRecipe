class IngredientsController < ApplicationController
    skip_before_action :authenticate_user

    def index 
        @ingredients = Ingredient.all.order(:name) 
    end 

    def show 
        @ingredient = Ingredient.find(params[:id])
    end 

end
