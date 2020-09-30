class SchedulesController < ApplicationController
    before_action :find_schedule, only: [:show, :edit, :update, :destroy]
   
    def index
        @schedules = Schedule.all
    end
    def show
        # @schedule = Schecule.find(params[:id])
    end

    def new
        @schedule = Schedule.new
        @studios = Studio.all
        @engineers = Engineer.all
    end

    def create 
        schedule = Schedule.create(schedule_params)
        if schedule.valid?
            redirect_to user_path(schedule.user) #?
        else
            flash[:my_errors] = schedule.errors.full_messages
            redirect_to new_schedule_path
        end
    end


    def edit
        @studios = Studio.all
        @engineers = Engineer.all
    end

    def update
        @schedule.update(schedule_params)
        
    
        redirect_to schedule_path(@schedule)
    end

    def destroy 
        @schedule.destroy
        redirect_to schedules_path
    end
        
    
    private 
    
    def find_schedule
        @schedule = Schedule.find(params[:id])
    end

    def schedule_params
        params.require(:schedule).permit(:user_id, :studio_id, :engineer_id, :date, :time)
    end
end

        