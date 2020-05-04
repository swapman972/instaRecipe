class ReactionsController < ApplicationController
    def index
        @reactions = Reaction.all
    end

    def show
        @reaction = Reaction.find(params[:id])
    end

    def new
        @reaction = Reaction.new 
    end

    def create
        @reaction = Reaction.create(reaction_params)
        redirect_to reaction_path(@reaction.id)
    end

    def edit
        @reaction = Reaction.find(params[:id])
    end

    def update
        @reaction = Reaction.find(params[:id])
        @reaction.update(reaction_params)
        redirect_to reaction_path(@reaction.id)
    end

    def destroy
        @reaction = Reaction.find(params[:id])
        @reaction.destroy
        redirect_to reactions_path
    end

    private
        def reaction_params
            params.require(:reaction).permit(:comment, :like, :dislike, :love, :disgust, :post_id, :user_id)
        end
end
