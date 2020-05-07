class ReactionsController < ApplicationController
    before_action :get_post
    before_action :set_reaction, only: [:show, :edit, :update, :destroy]


    def new
        @reaction = @post.reactions.new 
    end

    def create
        @reaction = @post.reactions.create(reaction_params)
        redirect_to post_path(@reaction.post)
    end

    def edit
    end

    def update
        @reaction.update(reaction_params)
        redirect_to post_path(@post)
    end

    def destroy
        reaction_post = @reaction.post
        @reaction.destroy
        redirect_to post_path(reaction_post)
    end

    private
        def reaction_params
            params.require(:reaction).permit(:comment, :post_id)
        end

        def get_post
            @post = Post.find(params[:post_id])
        end

        def set_reaction
            @reaction = @post.reactions.find(params[:id])
        end
end
