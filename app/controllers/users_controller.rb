class UsersController < ApplicationController
    before_action :find_user, only: [:show, :edit, :update, :destroy]

    def index
        @users = User.all
    end
    def show
        # @user = User.find(params[:id])
    end

    def new
        @user = User.new
        @studios = Studio.all
        @engineers = Engineer.all
    end

    def create 
        user = User.create(user_params)
        if user.valid?
            redirect_to user_path(user)
        else
            flash[:my_errors] = user.errors.full_messages
            redirect_to new_user_path
        end
    end


    def edit
        @studios = Studio.all
        @engineers = Engineer.all
    end

    def update
        @user.update(user_params)
        
    
        redirect_to user_path(@user)
    end

    def destroy 
        @user.destroy
        redirect_to users_path
    end

    def login
    end

    def handle_login
        @user = User.find_by(name: params[:name])
        if @user && @user.authenticate(params[:password])
            session[:user] = @user.id
            redirect_to users_path
        else
            flash[:message] = @user.errors.full_messages
            redirect_to login_path
        end
    end
    
    def logout
        session[:user] = nil
        redirect_to login_path
    end
        
    
    private 
    
    def find_user
        @user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:user_id, :studio_id, :engineer_id)
    end
end
