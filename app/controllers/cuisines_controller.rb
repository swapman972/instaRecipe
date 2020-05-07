class CuisinesController < ApplicationController
    skip_before_action :authenticate_user


def index
    @cuisines = Cuisine.all.order(:name)
end

def show
    @cuisine = Cuisine.find(params[:id])
end

end
