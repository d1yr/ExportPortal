class UsersController < ApplicationController
    before_action :find_user, only: [:show, :edit, :update, :destroy]
    before_action :session_record, only: [:show, :index, :edit]
    skip_before_action :authorized, only: [:new, :create, :login, :handle_login]
    
    def index
        @users = User.all
        #@session = session[:user]
    end
    def show
        # @user = User.find(params[:id])
        #@session = session[:user]
    end

    def new
        @user = User.new
        @studios = Studio.all
        @engineers = Engineer.all
    end

    def create 
        user = User.create(user_params)
        if user.valid?
            redirect_to login_path
        else
            flash[:my_errors] = user.errors.full_messages
            redirect_to new_user_path
        end
    end


    def edit
        @studios = Studio.all
        @engineers = Engineer.all
        #@session = session[:user]
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
            redirect_to user_path(@user.id)
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
    
    def session_record
        @session = session[:user]
    end

    def find_user
        @user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
end
