class EngineersController < ApplicationController
    before_action :session_record, only: [:index, :show]
    
    def index
        @engineers = Engineer.all
    end
    def show 
        @engineer = Engineer.find(params[:id])
        @session = session[:user]
    end

    private

    def session_record
        @session = session[:user]
    end
end
