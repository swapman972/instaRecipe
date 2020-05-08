class PostsController < ApplicationController
    
    def index
        @posts = Post.all.reverse
    end

    def show
        @post = Post.find(params[:id])
    end

    def new
        @post = Post.new 
    end

    def create
        @post = Post.create(post_params)
        @post[:user_id] = @current_user.id
        @post.save
        if @post.valid?
            redirect_to post_path(@post.id)
        else
            flash[:errors] = @post.errors.full_messages
            redirect_to new_post_path
        end
    end

    def edit
        @post = Post.find(params[:id])
        if @post.user_id == @current_user.id
            render :edit 
        else
            flash[:error] = "Sorry, this is not your post."
            redirect_to post_path(@post)
        end 
    end




    def update
        @post = Post.find(params[:id])
        if @post.update(post_params)
            redirect_to post_path(@post.id)
        else
            flash[:errors] = @post.errors.full_messages
            redirect_to edit_post_path
        end
    end

    def destroy
        @post = Post.find(params[:id])
        if @post.user_id == @current_user.id
            @post.destroy
            redirect_to posts_path
        else
            flash[:error] = "Sorry, this is not your post."
            redirect_to post_path(@post)
        end 
    end

    def like 
        @post = Post.find(params[:id])
        @post.increment!(:like)
        redirect_to post_path(@post)
    end

    def dislike 
        @post = Post.find(params[:id])
        @post.increment!(:dislike)
        redirect_to post_path(@post)
    end

    def love 
        @post = Post.find(params[:id])
        @post.increment!(:love)
        redirect_to post_path(@post)
    end

    def disgust 
        @post = Post.find(params[:id])
        @post.increment!(:disgust)
        redirect_to post_path(@post)
    end

    private
        def post_params
            params.require(:post).permit(:description, :rating, :picture, :user_id, :recipe_id, :like, :dislike, :love, :disgust)
        end
end
