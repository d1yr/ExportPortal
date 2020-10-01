class StudiosController < ApplicationController
    before_action :session_record, only: [:show, :index]
    def index
        @studios = Studio.all
    end
    def show
        @studio = Studio.find(params[:id])
    end

    private

    def session_record
        @session = session[:user]
    end
end
