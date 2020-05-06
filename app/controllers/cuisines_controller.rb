class CuisinesController < ApplicationController
def index
    @cuisines = Cuisine.all.order(:name)
end

def show
    @cuisine = Cuisine.find(params[:id])
end

end
