class UsersController < ApplicationController
    skip_before_action :authenticate_user, only: [:new, :create, :index]

    def index
        @users = User.all.order(:name)
    end

    def show
        @user = User.find(params[:id])
        if @user == @current_user
            render :show 
        else
            flash[:error] = "This is not your profile, Cannot access"
            redirect_to users_path 
        end 
    end

    def new
        @user = User.new 
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
            session[:user_id] = @user.id
            redirect_to user_path(@user.id)
        else
            flash[:errors] = user.errors.full_messages
            redirect_to new_user_path
        end
    end

    def edit
        @user = User.find(params[:id])
        if @user == @current_user
            render :edit 
        else
            flash[:error] = "HAHAHA, You thought you were smart?"
            redirect_to users_path 
        end 
    end

    def update
        @user = User.find(params[:id])
        @user.update(user_params)
        redirect_to user_path(@user.id)
    end

    def destroy 
        @user = User.find(params[:id])
        @user.destroy
        redirect_to users_path
    end

    private
    def user_params
        params.require(:user).permit(:name, :age, :email, :location, :picture, :password)
    end
end
